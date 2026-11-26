# Task 4.1 – Data Quality and Preparation

## Dataset Overview

The Metro Interstate Traffic Volume dataset was imported into Power BI Desktop and processed using Power Query Editor.

The dataset contains:

- **48,204 rows**
- **9 columns**

The dataset includes traffic, weather, holiday, and date-time information that can be used to analyse traffic patterns and congestion levels.

---

## Missing Value Analysis

Data quality was assessed using the Power Query Column Quality and Column Distribution features.

The analysis showed:

- 100% valid values across all columns.
- 0% error values.
- 0% empty values.

Although the **holiday** column contains the value **"None"** for many records, this represents valid non-holiday observations rather than missing data.

Therefore, no missing value treatment or imputation was required before analysis.

---

## Data Type Validation

The data types assigned by Power Query were reviewed using the Advanced Editor and the Changed Type transformation step.

| Column | Data Type |
|----------|----------|
| holiday | Text |
| temp | Decimal Number |
| rain_1h | Whole Number |
| snow_1h | Whole Number |
| clouds_all | Whole Number |
| weather_main | Text |
| weather_description | Text |
| date_time | Date/Time |
| traffic_volume | Whole Number |

All columns were assigned appropriate data types. Numerical variables were stored as numeric fields, categorical variables were stored as text, and the date_time field was correctly recognised as a DateTime value suitable for time-based analysis.

No data type corrections were required.

---

## Hour Extraction

A new column named **Hour** was extracted from the **date_time** field using Power Query.

This transformation generated hourly values ranging from 0 to 23 and enables detailed analysis of traffic behaviour throughout the day.

The Hour column supports the identification of peak traffic periods and hourly congestion trends.

---

## Temperature Conversion

The temperature values in the dataset were originally stored in Kelvin.

To improve interpretability, a new column named **Temperature_Celsius** was created using the following formula:

**Temperature_Celsius = temp − 273.15**

Converting temperatures to Celsius provides a more familiar scale for weather analysis and supports dashboard visualisations involving temperature trends.

---

## Traffic Category Creation

A new field named **Traffic_Category** was created using a Conditional Column in Power Query.

The following classification rules were applied:

- **Low:** traffic_volume < 4500
- **Medium:** traffic_volume between 4500 and 5500
- **High:** traffic_volume > 5500

This categorisation simplifies traffic analysis by grouping observations into meaningful congestion levels. It also supports filtering, reporting, and dashboard visualisations.

---

## Interpretation

The data quality assessment confirmed that the dataset is complete and suitable for analysis, with no missing values or data type issues requiring correction. Additional features such as Hour, Temperature_Celsius, and Traffic_Category were successfully created to enhance analytical capabilities. These transformations improve the ability to identify temporal traffic patterns, evaluate weather impacts, and classify congestion levels, providing a strong foundation for the development of the Traffic Intelligence Dashboard.