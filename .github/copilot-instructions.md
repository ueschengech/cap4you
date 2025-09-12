# Copilot Instructions for cap4you

## Project Overview
This is a SAP CAP (Cloud Application Programming) project with a modular structure:
- `app/`: SAP Fiori UI5 frontend applications (notably `projectshop`)
- `db/`: Domain models (`schema.cds`) and CSV data for entities
- `srv/`: Service definitions (`product-service.cds`)

## Key Workflows
- **Development server:**
  - Run `cds watch` (or use VS Code: Terminal > Run Task > cds watch) to start the CAP server with live reload.
  - The main service endpoint is at `http://localhost:4004/odata/v4/productshop/`.
- **Frontend launch:**
  - After starting CAP, open `http://localhost:4004/projectshop/webapp/index.html` in your browser.
- **Data management:**
  - CSV files in `db/data/` (e.g., `sap.cap.productshop-Product.csv`) seed the database. The first row is the header, matching entity fields.
  - Update CSVs to change initial data; restart CAP server to reload.
- **Modeling:**
  - Use CDS files (`db/schema.cds`, `app/services.cds`, `srv/product-service.cds`) to define entities, relationships, and services.
  - Entity field names in CSVs must match those in CDS models.

## Conventions & Patterns
- **File naming:**
  - Entity CSVs: `sap.cap.<namespace>-<Entity>.csv`
  - CDS files: Use clear, descriptive names for models and services.
- **Frontend:**
  - UI5 app in `app/projectshop/webapp/` follows SAP Fiori List Report V4 template.
  - Main entity: `Product`. See `manifest.json` and `Component.js` for configuration.
- **Testing:**
  - QUnit tests in `app/projectshop/webapp/test/` and `integration/`.
- **Configuration:**
  - `package.json` for dependencies and scripts.
  - `eslint.config.mjs` for linting (if enabled).

## External Dependencies
- Node.js LTS required.
- SAP Fiori tools (App Generator) used for UI scaffolding.
- CAP documentation: https://cap.cloud.sap/docs/get-started/

## Examples
- To add a new entity, update `db/schema.cds`, create a matching CSV in `db/data/`, and expose via a service in `srv/product-service.cds`.
- To debug UI, edit files in `app/projectshop/webapp/` and reload the browser.

---
For questions about unclear conventions or missing documentation, ask for clarification or request examples from maintainers.
