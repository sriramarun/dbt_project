# dbt Project: Modern SaaS Analytics

This dbt project demonstrates a full modern analytics engineering workflow using dbt, covering:

## ✅ What’s Included

- **Source models** for Stripe, Segment, and HubSpot
- **Staging models** to clean and standardize raw data
- **Dimensions & Facts** including customer and revenue
- **Data Vault** example with hubs, sats, and links
- **Snapshots** using SCD Type 2 to track customer lifecycle
- **Seeds** for currency exchange rates with tests
- **Custom Macros** for currency conversion and safe timestamp casting
- **Tests** for not_null, unique, relationships, and accepted_values
- **Documentation** and descriptions for models and columns
- **Sample Logs and Run Results** in `/target/`

## 🛠 Setup

1. Clone this repo
2. Create a `profiles.yml` file in `~/.dbt/` with your warehouse credentials
3. Run the following dbt commands:

```bash
dbt seed
dbt run
dbt test
dbt docs generate && dbt docs serve
```

## 📁 Project Structure

- `/models`: dbt models organized by type
- `/snapshots`: tracks slowly changing dimensions
- `/seeds`: static reference data (e.g. exchange rates)
- `/macros`: reusable SQL functions using Jinja
- `/target`: build artifacts (compiled SQL, logs, etc.)

## 🧪 Testing and CI

Use `dbt test` locally or integrate into CI with GitHub Actions. All critical fields are tested for nulls, uniqueness, valid enums, and referential integrity.

## 📄 Documentation

Run `dbt docs generate` and `dbt docs serve` to view an interactive site of your models, columns, and lineage.

---

Built as part of the “Modern dbt Blog Series” by [Sriram Krishnan] (https://moderndataarchitect.hashnode.dev/series/dbt-series)
