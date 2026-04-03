# Frictionless Framework Documentation Index

> Sources: 2 | Entries: 129 | Generated: 2026-04-03T12:00:00Z
> Generated from `index.yaml` — do not edit directly

---

## Api

- **Actions** `frictionless-py:framework/actions.md` - Reference documentation for Frictionless Framework actions including describing, extracting, validating, and transforming data operations.
- **Catalog Class** `frictionless-py:framework/catalog.md` - API reference for the Catalog class which manages collections of data packages and resources in Frictionless.
- **Checklist Class** `frictionless-py:framework/checklist.md` - Reference documentation for the Checklist class used to define custom validation rules and checks in Frictionless.
- **Detector Class** `frictionless-py:framework/detector.md` - API reference for the Detector class that automatically detects data formats, schemas, and metadata from data sources.
- **Dialect Class** `frictionless-py:framework/dialect.md` - Reference for the Dialect class which specifies how to parse and write tabular data in different formats.
- **Error Class** `frictionless-py:framework/error.md` - API reference for the Error class representing validation and processing errors in Frictionless with detailed error information.
- **Inquiry Class** `frictionless-py:framework/inquiry.md` - Reference for the Inquiry class which defines validation tasks with specific rules and constraints for validating multiple resources.
- **Package Class** `frictionless-py:framework/package.md` - API reference for the Package class representing collections of related data resources with shared metadata, following the Data Package standard.
- **Pipeline Class** `frictionless-py:framework/pipeline.md` - Reference for the Pipeline class enabling complex data processing workflows with multiple sequential transformation steps.
- **Report Class** `frictionless-py:framework/report.md` - API reference for the Report class containing validation results with detailed error information and metadata.
- **Resource Class** `frictionless-py:framework/resource.md` - Core API reference for the Resource class representing a single data file with metadata and operations for reading, writing, and validating data.
- **Schema Class** `frictionless-py:framework/schema.md` - API reference for the Schema class representing tabular data schemas with field definitions, constraints, and data type specifications.
- **Table Class** `frictionless-py:framework/table.md` - Reference for the Table class providing low-level access to tabular data with iterator interface for reading rows and cells.

## Guide

- **Caching of Resources** `datapackage:recipes/caching-of-resources.md` - Pattern for implementing resource caching allowing applications to maintain local copies of remote resources as fallback locations.
- **Comparison with CSVW** `datapackage:guides/csvw-data-package.md` - Comparative analysis between Data Package and W3C CSVW standards examining scope, maintenance, adoption, extensibility, and property mapping.
- **Comparison with MediaWiki Tabular Data** `datapackage:guides/mediawiki-tabular-data.md` - Comparative analysis between Data Package and MediaWiki Tabular Data specification examining property differences and schema variations.
- **Compression of Resources** `datapackage:recipes/compression-of-resources.md` - Pattern for applying compression to data resources to reduce storage and bandwidth costs while improving download performance.
- **Data Catalog** `datapackage:recipes/data-catalog.md` - Pattern for describing collections of data packages in catalogs or registries where each dataset is represented as a resource.
- **Data Dependencies** `datapackage:recipes/data-dependencies.md` - Pattern for specifying dependencies between data packages enabling version management and package installation chains.
- **Data Package Version** `datapackage:recipes/data-package-version.md` - Pattern establishing semantic versioning conventions for Data Packages defining how to increment versions based on changes to structure and content.
- **Describing Data** `frictionless-py:guides/describing-data.md` - Comprehensive guide to creating and managing metadata for data files using Frictionless, covering schemas, resources, packages, and metadata best practices.
- **Design Principles** `frictionless-py:advanced/design.md` - Overview of Frictionless Framework design principles and architecture.
- **Extending Frictionless** `frictionless-py:advanced/extending.md` - Guide to extending Frictionless Framework with custom checks, steps, and plugins.
- **External Foreign Keys** `datapackage:recipes/external-foreign-keys.md` - Pattern for linking field values in one data package to values in fields of a different data package using foreign key references.
- **Extracting Data** `frictionless-py:guides/extracting-data.md` - Tutorial on extracting data from various formats and sources using Frictionless, including handling different data structures and formats.
- **Files Inside Archives** `datapackage:recipes/files-inside-archives.md` - Pattern for including archive files (ZIP, tar) containing multiple files as data resources within data packages.
- **How to extend Data Package** `datapackage:guides/extending-data-package.md` - Guide on extending the Data Package standard with domain-specific customizations and additional metadata requirements.
- **Introduction** `datapackage:overview/introduction.md` - Comprehensive introduction to the Data Package Standard covering its role as a solution for data management, key principles of simplicity and flexibility, and benefits for data practitioners.
- **JSON Data Resources** `datapackage:recipes/json-data-resources.md` - Pattern extending Data Resource specification for describing structured JSON data with JSON Schema validation support.
- **Language Support** `datapackage:recipes/language-support.md` - Pattern for declaring language configuration in descriptors and data specifying default language and additional supported languages.
- **Metadata in Table Schema** `datapackage:recipes/metadata-in-table-schema.md` - Pattern for including metadata properties in Table Schema descriptors enabling standalone schema documentation and cataloging.
- **Private Properties** `datapackage:recipes/private-properties.md` - Pattern for storing system-generated metadata on descriptors using underscore-prefixed property names to distinguish from user-generated data.
- **Relationship between Fields** `datapackage:recipes/relationship-between-fields.md` - Pattern for expressing structural dependencies and constraints between fields in tabular datasets using entity-relationship model concepts.
- **System Overview** `frictionless-py:advanced/system.md` - Comprehensive overview of Frictionless Framework system components and interactions.
- **Transforming Data** `frictionless-py:guides/transforming-data.md` - Guide to transforming and processing tabular data using Frictionless, including filtering, reformatting, and applying custom transformations.
- **Translation Support** `datapackage:recipes/translation-support.md` - Pattern for supporting translations in both metadata descriptors and source data using inline field naming conventions and co-located translation sources.
- **Validating Data** `frictionless-py:guides/validating-data.md` - Complete guide to data validation in Frictionless, showing how to identify and fix data problems using validation functions and checks.

## Journal

- **Changelog** `datapackage:overview/changelog.md` - Detailed changelog documenting all meaningful changes made to the Data Package standard from v2.0 to v1.0, including specification improvements and feature updates.
- **Data Package (v2) is released!** `datapackage:blog/2024-06-26-v2-release.md` - Release announcement for Data Package v2.0 describing new features, governance model, working group contributions, and next steps for adoption.
- **Data Package (v2) work started** `datapackage:blog/2023-11-15-v2-announcement.md` - Announcement of the kickoff of Data Package v2 development with NLnet support, introducing the working group and roadmap for the update.

## Navigation

- **Data Package** `datapackage:index.mdx` - Landing page introducing the Data Package standard as a comprehensive specification for describing datasets and tabular data with emphasis on FAIR data principles.

## Reference

- **AWS Scheme** `frictionless-py:schemes/aws.md` - Reference for accessing data from Amazon S3 storage in Frictionless.
- **Adoption** `datapackage:overview/adoption.mdx` - Showcase of Data Package adoption across diverse organizations including data portals, pilot projects, and community implementations demonstrating real-world use cases.
- **Any Field** `frictionless-py:fields/any.md` - Reference for the Any field type, a generic field type that accepts any value without type constraints.
- **Array Field** `frictionless-py:fields/array.md` - Reference for the Array field type for storing ordered collections of values.
- **Baseline Check** `frictionless-py:checks/baseline.md` - Reference for the Baseline Check which performs fundamental validation of tabular data structure and format.
- **Boolean Field** `frictionless-py:fields/boolean.md` - Reference for the Boolean field type with true/false values.
- **Buffer Scheme** `frictionless-py:schemes/buffer.md` - Reference for reading data from byte buffers in Frictionless.
- **CKAN Portal** `frictionless-py:portals/ckan.md` - Reference for integrating with CKAN data portals in Frictionless.
- **CSV Format** `frictionless-py:formats/csv.md` - Reference for reading, writing, and configuring CSV file format in Frictionless with format-specific controls.
- **Camera Trap Data Package** `datapackage:extensions/camtrap-data-package.md` - Reference to Camera Trap Data Package, a community-developed data exchange format extension for camera trap data built on Data Package.
- **Cell Checks** `frictionless-py:checks/cell.md` - Reference for cell-level validation checks in Frictionless.
- **Cell Errors** `frictionless-py:errors/cell.md` - Reference documentation for cell-level validation errors including type mismatches and constraint violations.
- **Cell Steps** `frictionless-py:steps/cell.md` - Reference for cell-level transformation steps for modifying individual cell values.
- **Console Overview** `frictionless-py:console/overview.md` - Introduction to Frictionless command-line interface tools and general usage patterns for CLI commands.
- **Convert Command** `frictionless-py:console/convert.md` - CLI reference for the convert command to transform and convert data between different formats and structures.
- **Data Errors** `frictionless-py:errors/data.md` - Reference documentation for data-level validation errors in tabular files.
- **Data Package Specification** `datapackage:standard/data-package.mdx` - Formal specification of the Data Package standard defining the container format, descriptor structure, and metadata requirements for describing coherent collections of data. ⚡ GREP - `grep -n '^## ' FILE -A 20`
- **Data Resource Specification** `datapackage:standard/data-resource.mdx` - Specification for describing individual data resources including files or datasets, covering locators, metadata properties, and format information. ⚡ GREP - `grep -n '^## ' FILE -A 20`
- **Date Field** `frictionless-py:fields/date.md` - Reference for the Date field type with date format specifications.
- **Datetime Field** `frictionless-py:fields/datetime.md` - Reference for the Datetime field type combining date and time values.
- **Describe Command** `frictionless-py:console/describe.md` - CLI reference for the describe command used to generate metadata descriptors from data files.
- **Duration Field** `frictionless-py:fields/duration.md` - Reference for the Duration field type for time duration values.
- **ERD Format** `frictionless-py:formats/erd.md` - Reference for working with Entity-Relationship Diagram format in Frictionless.
- **Excel Format** `frictionless-py:formats/excel.md` - Reference for reading, writing, and configuring Excel/XLSX file format in Frictionless.
- **Explore Command** `frictionless-py:console/explore.md` - CLI reference for the explore command to interactively browse and analyze data files.
- **Extensions** `datapackage:standard/extensions.mdx` - Documentation of the Data Package extensibility mechanism allowing domain-specific extensions through JSON Schema profiles for specialized metadata requirements.
- **Extract Command** `frictionless-py:console/extract.md` - CLI reference for the extract command to read and output tabular data from various file formats.
- **Field Steps** `frictionless-py:steps/field.md` - Reference for field-level transformation steps for manipulating columns and fields.
- **File Errors** `frictionless-py:errors/file.md` - Reference documentation for file-level errors including missing files and read access issues.
- **File Resource** `frictionless-py:resources/file.md` - Reference for the File resource type in Frictionless.
- **Fiscal Data Package** `datapackage:extensions/fiscal-data-package.md` - Reference to Fiscal Data Package, a lightweight domain-specific extension for publishing and consuming government budget and fiscal data.
- **Geojson Field** `frictionless-py:fields/geojson.md` - Reference for the Geojson field type for GeoJSON geographic objects.
- **Geopoint Field** `frictionless-py:fields/geopoint.md` - Reference for the Geopoint field type for geographic point coordinates.
- **GitHub Portal** `frictionless-py:portals/github.md` - Reference for publishing and managing Frictionless data packages on GitHub.
- **Glossary** `datapackage:standard/glossary.mdx` - Comprehensive glossary defining key terms and concepts used throughout the Data Package standard including profile, descriptor, and custom properties.
- **Google Sheets Format** `frictionless-py:formats/gsheets.md` - Reference for reading and writing data from Google Sheets in Frictionless.
- **HTML Format** `frictionless-py:formats/html.md` - Reference for extracting tabular data from HTML tables in Frictionless.
- **Header Errors** `frictionless-py:errors/header.md` - Reference documentation for header-level validation errors including malformed headers and duplicates.
- **Index Command** `frictionless-py:console/index.md` - CLI reference for the index command to create indexing structures for efficient data access.
- **Inline Format** `frictionless-py:formats/inline.md` - Reference for working with inline tabular data structures in Frictionless.
- **Integer Field** `frictionless-py:fields/integer.md` - Reference for the Integer field type in Frictionless schemas.
- **JSON Format** `frictionless-py:formats/json.md` - Reference for reading, writing, and configuring JSON data format in Frictionless.
- **JSON Resource** `frictionless-py:resources/json.md` - Reference for the JSON resource type in Frictionless.
- **JSON Schema Format** `frictionless-py:formats/jsonschema.md` - Reference for working with JSON Schema format in Frictionless for schema definition and validation.
- **Label Errors** `frictionless-py:errors/label.md` - Reference documentation for label/column name validation errors.
- **List Command** `frictionless-py:console/list.md` - CLI reference for the list command to list available data resources and their contents.
- **Local Scheme** `frictionless-py:schemes/local.md` - Reference for accessing local file system data in Frictionless.
- **Markdown Format** `frictionless-py:formats/markdown.md` - Reference for reading and writing tabular data in Markdown format.
- **Metadata Errors** `frictionless-py:errors/metadata.md` - Reference documentation for metadata validation errors in descriptors and schemas.
- **Multipart Scheme** `frictionless-py:schemes/multipart.md` - Reference for reading data from multiple concatenated files.
- **Number Field** `frictionless-py:fields/number.md` - Reference for the Number field type supporting floating-point and decimal values.
- **ODS Format** `frictionless-py:formats/ods.md` - Reference for reading and writing OpenDocument Spreadsheet (ODS) format in Frictionless.
- **Object Field** `frictionless-py:fields/object.md` - Reference for the Object field type for structured key-value data.
- **Pandas Format** `frictionless-py:formats/pandas.md` - Reference for converting between Frictionless Resources and Pandas DataFrames.
- **Parquet Format** `frictionless-py:formats/parquet.md` - Reference for reading and writing Apache Parquet columnar data format in Frictionless.
- **Publish Command** `frictionless-py:console/publish.md` - CLI reference for the publish command to publish data and metadata to remote repositories and data portals.
- **Query Command** `frictionless-py:console/query.md` - CLI reference for the query command to execute SQL-like queries against tabular data.
- **Remote Scheme** `frictionless-py:schemes/remote.md` - Reference for accessing remote HTTP/HTTPS data sources in Frictionless.
- **Resource Errors** `frictionless-py:errors/resource.md` - Reference documentation for resource-level validation errors.
- **Resource Steps** `frictionless-py:steps/resource.md` - Reference for resource-level transformation steps used in data pipelines.
- **Row Checks** `frictionless-py:checks/row.md` - Reference for row-level validation checks and constraints.
- **Row Errors** `frictionless-py:errors/row.md` - Reference documentation for row-level validation errors including missing headers and row constraint violations.
- **Row Steps** `frictionless-py:steps/row.md` - Reference for row-level transformation steps including filtering, searching, and slicing.
- **SPSS Format** `frictionless-py:formats/spss.md` - Reference for reading SPSS data files in Frictionless.
- **SQL Format** `frictionless-py:formats/sql.md` - Reference for reading and writing data from SQL databases in Frictionless.
- **Script Command** `frictionless-py:console/script.md` - CLI reference for the script command to execute Python scripts for data processing and analysis.
- **Security** `datapackage:standard/security.mdx` - Security considerations for working with Data Packages covering resource pointer types, descriptor sources, and attack prevention strategies.
- **Software** `datapackage:overview/software.mdx` - Comprehensive overview of software tools and libraries supporting the Data Package standard across multiple programming languages and platforms.
- **Stream Scheme** `frictionless-py:schemes/stream.md` - Reference for reading data from stream inputs in Frictionless.
- **String Field** `frictionless-py:fields/string.md` - Reference for the String field type with supported formats including URI, email, UUID, and binary.
- **Table Checks** `frictionless-py:checks/table.md` - Reference for table-level validation checks.
- **Table Dialect Specification** `datapackage:standard/table-dialect.mdx` - Specification describing how tabular data is stored in files, supporting delimited text formats like CSV, semi-structured formats like JSON, and spreadsheets. ⚡ GREP - `grep -n '^## ' FILE -A 20`
- **Table Errors** `frictionless-py:errors/table.md` - Reference documentation for table-level validation errors.
- **Table Resource** `frictionless-py:resources/table.md` - Reference for the Table resource type for tabular data in Frictionless.
- **Table Schema Specification** `datapackage:standard/table-schema.mdx` - Language-agnostic specification for declaring schemas describing tabular data structure, field types, constraints, and validation rules. ⚡ GREP - `grep -n '^## ' FILE -A 20`
- **Table Steps** `frictionless-py:steps/table.md` - Reference for table-level transformation steps including normalization and restructuring.
- **Text Resource** `frictionless-py:resources/text.md` - Reference for the Text resource type in Frictionless.
- **Time Field** `frictionless-py:fields/time.md` - Reference for the Time field type for time-of-day values.
- **Universe** `frictionless-py:universe.md` - Collection of Jupyter notebooks and tutorials for Frictionless Framework covering use cases like data shaping, biology workflows, and research data management.
- **Validate Command** `frictionless-py:console/validate.md` - CLI reference for the validate command to check data files for errors and data quality issues.
- **YAML Format** `frictionless-py:formats/yaml.md` - Reference for reading and writing YAML data format in Frictionless.
- **Year Field** `frictionless-py:fields/year.md` - Reference for the Year field type for year values.
- **Year Month Field** `frictionless-py:fields/yearmonth.md` - Reference for the Year-Month field type for year-month combinations.
- **ZIP Format** `frictionless-py:formats/zip.md` - Reference for reading data from ZIP archive files in Frictionless.
- **Zenodo Portal** `frictionless-py:portals/zenodo.md` - Reference for publishing data packages to Zenodo repository.

## Tutorial

- **Basic Examples** `frictionless-py:basic-examples.md` - Hands-on walkthrough of core Frictionless operations using a real-world anthropology dataset, demonstrating describing, extracting, validating, and transforming data.
- **Getting Started** `frictionless-py:getting-started.md` - Introduction to Frictionless Framework with installation instructions, basic usage patterns for both CLI and Python library, and troubleshooting guidance.
- **How to start using Data Package** `datapackage:guides/using-data-package.md` - Practical guide covering popular Data Package implementations including Open Data Editor, frictionless-py, and frictionless-r with code examples.

---

*Rendered from index.yaml at 2026-04-03T12:00:00Z*
