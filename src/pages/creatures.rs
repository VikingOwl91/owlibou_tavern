use crate::db::Creature;
use dioxus::prelude::*;

#[component]
pub fn CreaturesPage(creatures: Vec<Creature>) -> Element {
    rsx! {
        div {
            h2 { "Creatures" }
            if creatures.is_empty() {
                p { "No creatures found in the database." }
            } else {
                table {
                    thead {
                        tr {
                            th { "ID" }
                            th { "Name" }
                            th { "Type" }
                            th { "Description" }
                            th { "Actions" }
                        }
                    }
                    tbody {
                        for creature in creatures {
                            tr {
                                td { "{creature.id}" }
                                td { "{creature.name}" }
                                td { "{creature.typ.as_deref().unwrap_or(\"-\")}" }
                                td { "{creature.beschreibung.as_deref().unwrap_or(\"-\")}" }
                                td {
                                    a {
                                        href: "/creatures/{creature.id}/edit",
                                        "Edit"
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
