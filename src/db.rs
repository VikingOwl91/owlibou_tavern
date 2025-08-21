use sqlx::{sqlite::SqlitePoolOptions, SqlitePool};

const DATABASE_URL: &str = "sqlite:rules.db";

// A function to establish a connection pool.
// On the server, this will be called once and the pool will be reused.
pub async fn get_pool() -> Result<SqlitePool, sqlx::Error> {
    SqlitePoolOptions::new()
        .max_connections(5)
        .connect(DATABASE_URL)
        .await
}

#[derive(Debug, Clone, PartialEq, Eq, serde::Serialize, serde::Deserialize, sqlx::FromRow)]
pub struct Creature {
    pub id: i64,
    pub optolith_key: Option<String>,
    pub name: String,
    pub typ: Option<String>,
    pub groessenkategorie: Option<String>,
    pub attr_mu: Option<i64>,
    pub attr_kl: Option<i64>,
    pub attr_in: Option<i64>,
    pub attr_ch: Option<i64>,
    pub attr_ff: Option<i64>,
    pub attr_ge: Option<i64>,
    pub attr_ko: Option<i64>,
    pub attr_kk: Option<i64>,
    pub le_formel: Option<String>,
    pub sk_wert: Option<i64>,
    pub zk_wert: Option<i64>,
    pub gs_wert: Option<i64>,
    pub ini_formel: Option<String>,
    pub rs_wert: Option<i64>,
    pub beschreibung: Option<String>,
    pub fluchtverhalten: Option<String>,
}

// A function to fetch all creatures from the database.
// This will be called from a server function.
pub async fn get_all_creatures(pool: &SqlitePool) -> Result<Vec<Creature>, sqlx::Error> {
    sqlx::query_as::<_, Creature>("SELECT * FROM creature ORDER BY name ASC")
        .fetch_all(pool)
        .await
}

// A function to fetch a single creature by its ID.
pub async fn get_creature(pool: &SqlitePool, id: i64) -> Result<Creature, sqlx::Error> {
    sqlx::query_as::<_, Creature>("SELECT * FROM creature WHERE id = ?")
        .bind(id)
        .fetch_one(pool)
        .await
}
