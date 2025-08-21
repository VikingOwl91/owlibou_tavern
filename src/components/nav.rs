use dioxus::prelude::*;

#[component]
pub fn NavBar() -> Element {
    rsx! {
        nav {
            ul {
                li { a { href: "/", "Home" } }
                li { a { href: "/creatures", "Creatures" } }
                li { a { href: "/import", "Import" } }
                li { a { href: "/changelog", "Changelog" } }
            }
        }
    }
}
