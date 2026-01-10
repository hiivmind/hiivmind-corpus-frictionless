# Frictionless Framework Documentation Index

> Data management framework for Python that provides functionality to describe, extract, validate, and transform tabular data.
> Source: frictionless-py (96 doc files)
> Last updated: 2026-01-06

---

## Quick Reference

Common lookups:

- **Installation** `frictionless-py:getting-started.md` - pip install frictionless
- **Validate a file** `frictionless-py:guides/validating-data.md` - validate('data.csv')
- **Extract data** `frictionless-py:guides/extracting-data.md` - extract('data.csv')
- **Describe metadata** `frictionless-py:guides/describing-data.md` - describe('data.csv')
- **Transform data** `frictionless-py:guides/transforming-data.md` - transform pipelines

---

## Getting Started

- **Getting Started** `frictionless-py:getting-started.md` - Installation, basic usage with CLI and Python, example workflow with describe/extract/validate
  Keywords: `install`, `pip`, `quickstart`, `introduction`, `setup`

- **Basic Examples** `frictionless-py:basic-examples.md` - End-to-end tutorial: describing, extracting, validating, and transforming a countries dataset
  Keywords: `tutorial`, `example`, `walkthrough`, `countries`

---

## Data Management Guides

Core workflows for working with data:

- **Describing Data** `frictionless-py:guides/describing-data.md` - Creating metadata with describe(), Schema.describe(), Resource.describe(), Package.describe()
  Keywords: `describe`, `metadata`, `infer`, `schema`, `resource`, `package`

- **Extracting Data** `frictionless-py:guides/extracting-data.md` - Reading data with extract(), streaming, handling large files
  Keywords: `extract`, `read`, `rows`, `data`, `stream`

- **Validating Data** `frictionless-py:guides/validating-data.md` - Checking data quality with validate(), understanding validation reports
  Keywords: `validate`, `validation`, `errors`, `report`, `quality`, `check`

- **Transforming Data** `frictionless-py:guides/transforming-data.md` - ETL pipelines with transform(), steps, cleaning data
  Keywords: `transform`, `pipeline`, `steps`, `etl`, `clean`, `convert`

---

## Console Commands (CLI)

Command-line interface reference:

- **CLI Overview** `frictionless-py:console/overview.md` - Installation, commands, arguments, outputs, debugging
  Keywords: `cli`, `command`, `terminal`, `bash`

- **describe** `frictionless-py:console/describe.md` - Infer metadata from data files
  Keywords: `describe`, `cli`, `metadata`

- **convert** `frictionless-py:console/convert.md` - Convert between data formats
  Keywords: `convert`, `format`, `cli`

- **explore** `frictionless-py:console/explore.md` - Interactive data exploration
  Keywords: `explore`, `interactive`, `cli`

- **extract** `frictionless-py:console/extract.md` - Read and output data
  Keywords: `extract`, `read`, `cli`

- **index** `frictionless-py:console/index.md` - Load data into databases
  Keywords: `index`, `database`, `sql`, `cli`

- **list** `frictionless-py:console/list.md` - List resources in a package
  Keywords: `list`, `resources`, `cli`

- **publish** `frictionless-py:console/publish.md` - Publish data to portals
  Keywords: `publish`, `portal`, `ckan`, `zenodo`, `cli`

- **query** `frictionless-py:console/query.md` - Query data with SQL
  Keywords: `query`, `sql`, `cli`

- **script** `frictionless-py:console/script.md` - Generate Python scripts
  Keywords: `script`, `python`, `cli`

- **validate** `frictionless-py:console/validate.md` - Validate data against schemas
  Keywords: `validate`, `cli`

---

## Python Framework (API Reference)

Core classes and their usage:

### Actions

- **Actions** `frictionless-py:framework/actions.md` - High-level functions: describe(), extract(), validate(), transform()
  Keywords: `actions`, `describe`, `extract`, `validate`, `transform`, `functions`

### Core Classes

- **Package** `frictionless-py:framework/package.md` - Data Package: collection of resources with metadata, managing multiple files
  Keywords: `package`, `datapackage`, `resources`, `dataset`

- **Resource** `frictionless-py:framework/resource.md` - Data Resource: single file with metadata, reading/writing, streaming, lifecycle
  Keywords: `resource`, `file`, `read`, `write`, `stream`

- **Schema** `frictionless-py:framework/schema.md` - Table Schema: field definitions, types, constraints, foreign keys
  Keywords: `schema`, `fields`, `types`, `constraints`, `foreignkey`

- **Dialect** `frictionless-py:framework/dialect.md` - Table Dialect: CSV delimiters, header rows, quote chars, format-specific settings
  Keywords: `dialect`, `delimiter`, `header`, `csv`, `separator`

### Supporting Classes

- **Catalog** `frictionless-py:framework/catalog.md` - Catalog of multiple packages
  Keywords: `catalog`, `packages`

- **Checklist** `frictionless-py:framework/checklist.md` - Validation checklist: which checks to run
  Keywords: `checklist`, `checks`, `validation`

- **Pipeline** `frictionless-py:framework/pipeline.md` - Transform Pipeline: sequence of transformation steps
  Keywords: `pipeline`, `transform`, `steps`, `etl`

- **Detector** `frictionless-py:framework/detector.md` - Detector settings: field type inference, missing values
  Keywords: `detector`, `infer`, `types`, `missing`

- **Inquiry** `frictionless-py:framework/inquiry.md` - Validation Inquiry: what to validate and how
  Keywords: `inquiry`, `validation`

- **Report** `frictionless-py:framework/report.md` - Validation Report: errors, stats, flatten results
  Keywords: `report`, `errors`, `results`, `flatten`

- **Table** `frictionless-py:framework/table.md` - Table object for lower-level operations
  Keywords: `table`, `rows`, `cells`

- **Error** `frictionless-py:framework/error.md` - Error class and error handling
  Keywords: `error`, `exception`, `handling`

---

## Data Fields (Type Definitions)

Field types supported by Table Schema:

- **Any** `frictionless-py:fields/any.md` - Any type (no type coercion)
  Keywords: `any`, `type`, `field`

- **Array** `frictionless-py:fields/array.md` - JSON array type
  Keywords: `array`, `list`, `type`

- **Boolean** `frictionless-py:fields/boolean.md` - True/false values
  Keywords: `boolean`, `bool`, `true`, `false`

- **Date** `frictionless-py:fields/date.md` - Date without time (YYYY-MM-DD)
  Keywords: `date`, `type`

- **Datetime** `frictionless-py:fields/datetime.md` - Date with time (ISO 8601)
  Keywords: `datetime`, `timestamp`, `iso8601`

- **Duration** `frictionless-py:fields/duration.md` - Time duration (ISO 8601)
  Keywords: `duration`, `interval`

- **GeoJSON** `frictionless-py:fields/geojson.md` - GeoJSON geometry objects
  Keywords: `geojson`, `geometry`, `geo`

- **Geopoint** `frictionless-py:fields/geopoint.md` - Geographic coordinates (lat/lon)
  Keywords: `geopoint`, `coordinates`, `latitude`, `longitude`

- **Integer** `frictionless-py:fields/integer.md` - Whole numbers
  Keywords: `integer`, `int`, `number`

- **Number** `frictionless-py:fields/number.md` - Decimal numbers
  Keywords: `number`, `float`, `decimal`

- **Object** `frictionless-py:fields/object.md` - JSON object type
  Keywords: `object`, `dict`, `json`

- **String** `frictionless-py:fields/string.md` - Text values with format constraints
  Keywords: `string`, `text`, `format`, `email`, `uri`

- **Time** `frictionless-py:fields/time.md` - Time without date (HH:MM:SS)
  Keywords: `time`, `type`

- **Year** `frictionless-py:fields/year.md` - Year only (YYYY)
  Keywords: `year`, `type`

- **Yearmonth** `frictionless-py:fields/yearmonth.md` - Year and month (YYYY-MM)
  Keywords: `yearmonth`, `type`

---

## Data Formats

Supported file formats and their controls:

- **CSV** `frictionless-py:formats/csv.md` - Comma-separated values (delimiter, quoting, encoding)
  Keywords: `csv`, `comma`, `tsv`, `delimiter`

- **Excel** `frictionless-py:formats/excel.md` - Excel files (.xlsx, .xls) with sheet selection
  Keywords: `excel`, `xlsx`, `xls`, `spreadsheet`

- **JSON** `frictionless-py:formats/json.md` - JSON and JSON Lines formats
  Keywords: `json`, `jsonl`, `ndjson`

- **Parquet** `frictionless-py:formats/parquet.md` - Apache Parquet columnar format
  Keywords: `parquet`, `columnar`, `arrow`

- **SQL** `frictionless-py:formats/sql.md` - SQL databases via SQLAlchemy
  Keywords: `sql`, `database`, `postgres`, `mysql`, `sqlite`

- **Pandas** `frictionless-py:formats/pandas.md` - Pandas DataFrame integration
  Keywords: `pandas`, `dataframe`, `df`

- **HTML** `frictionless-py:formats/html.md` - HTML tables
  Keywords: `html`, `table`, `web`

- **Markdown** `frictionless-py:formats/markdown.md` - Markdown tables
  Keywords: `markdown`, `md`, `table`

- **YAML** `frictionless-py:formats/yaml.md` - YAML data files
  Keywords: `yaml`, `yml`

- **ODS** `frictionless-py:formats/ods.md` - OpenDocument Spreadsheet
  Keywords: `ods`, `libreoffice`, `openoffice`

- **Google Sheets** `frictionless-py:formats/gsheets.md` - Google Sheets integration
  Keywords: `gsheets`, `google`, `sheets`

- **SPSS** `frictionless-py:formats/spss.md` - SPSS data files (.sav)
  Keywords: `spss`, `sav`, `statistics`

- **JSON Schema** `frictionless-py:formats/jsonschema.md` - JSON Schema validation
  Keywords: `jsonschema`, `schema`

- **ERD** `frictionless-py:formats/erd.md` - Entity-relationship diagrams
  Keywords: `erd`, `diagram`

- **Inline** `frictionless-py:formats/inline.md` - Inline Python data structures
  Keywords: `inline`, `memory`, `list`

- **ZIP** `frictionless-py:formats/zip.md` - Compressed archives
  Keywords: `zip`, `archive`, `compression`

---

## Data Schemes (Sources)

Supported data sources and protocols:

- **Local** `frictionless-py:schemes/local.md` - Local filesystem (default)
  Keywords: `local`, `file`, `filesystem`

- **Remote** `frictionless-py:schemes/remote.md` - HTTP/HTTPS URLs
  Keywords: `remote`, `http`, `https`, `url`

- **AWS S3** `frictionless-py:schemes/aws.md` - Amazon S3 buckets
  Keywords: `aws`, `s3`, `amazon`, `bucket`

- **Buffer** `frictionless-py:schemes/buffer.md` - In-memory bytes buffer
  Keywords: `buffer`, `bytes`, `memory`

- **Stream** `frictionless-py:schemes/stream.md` - Python file-like objects
  Keywords: `stream`, `filelike`, `io`

- **Multipart** `frictionless-py:schemes/multipart.md` - Multipart file handling
  Keywords: `multipart`, `chunked`

---

## Data Portals

Publishing to data repositories:

- **CKAN** `frictionless-py:portals/ckan.md` - CKAN data portal integration
  Keywords: `ckan`, `portal`, `publish`

- **GitHub** `frictionless-py:portals/github.md` - GitHub repository integration
  Keywords: `github`, `repo`, `publish`

- **Zenodo** `frictionless-py:portals/zenodo.md` - Zenodo research data repository
  Keywords: `zenodo`, `doi`, `research`, `publish`

---

## Validation Checks

Built-in validation checks:

- **Baseline Checks** `frictionless-py:checks/baseline.md` - Default checks (structure, types)
  Keywords: `baseline`, `default`, `checks`

- **Table Checks** `frictionless-py:checks/table.md` - Table-level validation (row limits, dimensions)
  Keywords: `table`, `checks`, `rows`

- **Row Checks** `frictionless-py:checks/row.md` - Row-level validation (duplicates, constraints)
  Keywords: `row`, `checks`, `duplicate`

- **Cell Checks** `frictionless-py:checks/cell.md` - Cell-level validation (patterns, ranges)
  Keywords: `cell`, `checks`, `pattern`

---

## Transform Steps

Built-in transformation steps:

- **Resource Steps** `frictionless-py:steps/resource.md` - Resource-level transformations (add, remove, update)
  Keywords: `resource`, `steps`, `transform`

- **Table Steps** `frictionless-py:steps/table.md` - Table-level transformations (normalize, merge, write)
  Keywords: `table`, `steps`, `normalize`, `merge`

- **Field Steps** `frictionless-py:steps/field.md` - Field-level transformations (add, remove, rename, update)
  Keywords: `field`, `steps`, `rename`, `column`

- **Row Steps** `frictionless-py:steps/row.md` - Row-level transformations (filter, sort, slice)
  Keywords: `row`, `steps`, `filter`, `sort`

- **Cell Steps** `frictionless-py:steps/cell.md` - Cell-level transformations (convert, replace, format)
  Keywords: `cell`, `steps`, `replace`, `convert`

---

## Data Resources

Resource types:

- **File Resource** `frictionless-py:resources/file.md` - File-based resources
  Keywords: `file`, `resource`

- **Text Resource** `frictionless-py:resources/text.md` - Text-based resources
  Keywords: `text`, `resource`

- **JSON Resource** `frictionless-py:resources/json.md` - JSON-based resources
  Keywords: `json`, `resource`

- **Table Resource** `frictionless-py:resources/table.md` - Tabular resources
  Keywords: `table`, `resource`, `tabular`

---

## Error Types

Validation error categories:

- **Metadata Errors** `frictionless-py:errors/metadata.md` - Schema/descriptor issues
  Keywords: `metadata`, `error`, `descriptor`

- **Resource Errors** `frictionless-py:errors/resource.md` - Resource-level issues
  Keywords: `resource`, `error`

- **Data Errors** `frictionless-py:errors/data.md` - General data issues
  Keywords: `data`, `error`

- **File Errors** `frictionless-py:errors/file.md` - File access issues
  Keywords: `file`, `error`, `notfound`

- **Table Errors** `frictionless-py:errors/table.md` - Table structure issues
  Keywords: `table`, `error`, `structure`

- **Header Errors** `frictionless-py:errors/header.md` - Header row issues
  Keywords: `header`, `error`, `columns`

- **Label Errors** `frictionless-py:errors/label.md` - Column label issues
  Keywords: `label`, `error`, `column`

- **Row Errors** `frictionless-py:errors/row.md` - Row-level issues
  Keywords: `row`, `error`

- **Cell Errors** `frictionless-py:errors/cell.md` - Cell-level issues (type, constraint)
  Keywords: `cell`, `error`, `type`, `constraint`

---

## Advanced Topics

- **Design** `frictionless-py:advanced/design.md` - Framework architecture and design principles
  Keywords: `design`, `architecture`, `internals`

- **System** `frictionless-py:advanced/system.md` - System configuration and plugins
  Keywords: `system`, `config`, `plugins`

- **Extending** `frictionless-py:advanced/extending.md` - Creating custom plugins, fields, checks, steps
  Keywords: `extending`, `custom`, `plugin`, `develop`

---

## Ecosystem

- **Frictionless Universe** `frictionless-py:universe.md` - Related projects and ecosystem
  Keywords: `universe`, `ecosystem`, `related`
