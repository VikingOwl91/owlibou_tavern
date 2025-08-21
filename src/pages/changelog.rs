use dioxus::prelude::*;

#[component]
pub fn ChangelogPage() -> Element {
    rsx! {
        div {
            h2 { "Changelog" }

            h3 { "Version 0.1.0 (In Progress)" }
            ul {
                li { "Implemented basic frontend structure with routing." }
                li { "Added database integration and view for creatures." }
                li { "Scaffolded edit and import functionalities." }
                li { "Created this changelog page." }
            }

            h3 { "Version 0.0.1 (Initial Setup)" }
            ul {
                li { "Initialized the project with Dioxus." }
                li { "Set up database schema." }
            }
        }
    }
}
