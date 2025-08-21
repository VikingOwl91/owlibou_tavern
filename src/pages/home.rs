use dioxus::prelude::*;

#[component]
pub fn HomePage() -> Element {
    rsx! {
        div {
            h2 { "Home" }
            p { "Welcome to Owlibou Tavern!" }
        }
    }
}
