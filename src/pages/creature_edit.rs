use crate::db::Creature;
use dioxus::prelude::*;

#[component]
pub fn CreatureEditPage(creature: Creature) -> Element {
    rsx! {
        div {
            h2 { "Edit Creature (ID: {creature.id})" }
            div {
                p { "Name: {creature.name}" }
                p { "Type: {creature.typ.as_deref().unwrap_or(\"-\")}" }
                button {
                    onclick: move |_| {},
                    "Save Changes"
                }
            }
        }
    }
}
