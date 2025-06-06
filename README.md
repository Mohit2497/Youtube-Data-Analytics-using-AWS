![image](https://github.com/user-attachments/assets/e5905967-6bd2-458f-8eb2-9e5446b10938)


# End-to-End YouTube Data Engineering Project

This repository contains code and documentation for an end-to-end data engineering pipeline to process and analyze YouTube trending video data using AWS cloud services.

## 📌 Project Overview

- **Architecture**: Built using AWS services including S3, Glue, Lambda, Athena, and QuickSight.
- **Goal**: Process and analyze semi-structured (JSON) and structured (CSV) YouTube data.
- **Data Source**: Kaggle's *Top Trending Videos Dataset* (originally scraped using the included `Trending-YouTube-Scraper` script).
- **Deployment**: Follows a multi-stage data lake architecture with raw, cleansed, and analytical zones.

## 🚀 AWS Workflow

1. **Raw Data Ingestion**
   - Upload CSV (per-region) and JSON (category metadata) files to Amazon S3 (`raw` zone).
2. **Cataloging**
   - Use AWS Glue Crawlers to infer schema and catalog raw data.
3. **Data Transformation**
   - JSON: Processed with AWS Lambda using `aws-wrangler`, stored in Parquet format.
   - CSV: Cleaned and partitioned by region using AWS Glue ETL (PySpark), written to `cleansed` zone.
4. **Final Join**
   - Use Glue Studio visual jobs to join cleansed JSON and CSV data, producing analytics-ready Parquet files.
5. **Querying & Analysis**
   - Query data using Amazon Athena.
6. **Visualization**
   - Connect AWS QuickSight to Athena to build interactive dashboards.
