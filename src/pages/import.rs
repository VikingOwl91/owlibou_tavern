use dioxus::prelude::*;

#[component]
pub fn ImportPage() -> Element {
    rsx! {
        div {
            h2 { "Import Data" }
            p { "This page will be used to import data from files." }
            form {
                prevent_default: "onsubmit",
                onsubmit: move |_| {
                    // Placeholder for form submission logic
                    log::info!("Form submitted for file import.");
                },
                input {
                    r#type: "file",
                    accept: ".json,.csv", // Example file types
                }
                button {
                    r#type: "submit",
                    "Import"
                }
            }
        }
    }
}
