#![allow(non_snake_case)]
use axum::{
    extract::{Path, State},
    response::Html,
    routing::get,
    Router,
};
use dioxus::prelude::*;
use sqlx::SqlitePool;

mod db;
mod pages;
mod components;

#[derive(Clone)]
pub struct AppState {
    pub pool: SqlitePool,
}

#[tokio::main]
async fn main() {
    let pool = db::get_pool().await.expect("Failed to create database pool");
    let app_state = AppState { pool };

    let router = Router::new()
        .route("/", get(home_page))
        .route("/creatures", get(creatures_page))
        .route("/creatures/:id/edit", get(creature_edit_page))
        .route("/import", get(import_page))
        .route("/changelog", get(changelog_page))
        .with_state(app_state);

    let listener = tokio::net::TcpListener::bind("0.0.0.0:3000").await.unwrap();
    println!("listening on http://{}", listener.local_addr().unwrap());
    axum::serve(listener, router).await.unwrap();
}

// The main layout component
#[component]
fn Layout(children: Element) -> Element {
    rsx! {
        // The NavBar component
        components::nav::NavBar {}
        // The actual page content
        div {
            {children}
        }
    }
}

// A wrapper to render a Dioxus component to a full HTML page.
fn render_page(root: Element) -> String {
    // Create a new VirtualDom with the Layout component as the root
    // and the page content as its children
    let mut dom = VirtualDom::new_with_props(Layout, LayoutProps { children: root });

    // Rebuild the DOM once to process all components
    dom.rebuild_in_place();

    // Render the DOM to a string
    format!("<!DOCTYPE html><html><head><title>Owlibou Tavern</title></head><body>{}</body></html>", dioxus::ssr::render(&dom))
}

async fn home_page() -> Html<String> {
    Html(render_page(rsx! { pages::home::HomePage {} }))
}

async fn creatures_page(State(state): State<AppState>) -> Html<String> {
    let creatures = db::get_all_creatures(&state.pool).await.unwrap_or_default();
    Html(render_page(rsx! { pages::creatures::CreaturesPage { creatures: creatures } }))
}

async fn creature_edit_page(Path(id): Path<i64>, State(state): State<AppState>) -> Html<String> {
    match db::get_creature(&state.pool, id).await {
        Ok(creature) => Html(render_page(rsx! { pages::creature_edit::CreatureEditPage { creature: creature } })),
        Err(_) => Html("Creature not found".to_string()),
    }
}

async fn import_page() -> Html<String> {
    Html(render_page(rsx! { pages::import::ImportPage {} }))
}

async fn changelog_page() -> Html<String> {
    Html(render_page(rsx! { pages::changelog::ChangelogPage {} }))
}
