# Task 4.1 – Data Quality and Preparation

## Objective

The Metro Interstate Traffic Volume dataset was imported into Power BI Desktop and prepared using Power Query Editor. Data quality checks and feature engineering steps were performed to ensure the dataset was suitable for dashboard development and traffic analysis.

---

## Dataset Overview

The dataset contains:

- Rows: 48,204
- Columns: 9

Original columns:

- holiday
- temp
- rain_1h
- snow_1h
- clouds_all
- weather_main
- weather_description
- date_time
- traffic_volume

---

## Missing Value Analysis

Data quality was assessed using the Column Quality and Column Distribution features in Power Query Editor.

Results:

| Metric | Result |
|----------|----------|
| Valid Values | 100% |
| Error Values | 0% |
| Empty Values | 0% |

All columns were found to contain valid data.

Although the holiday column includes many records with the value "None", these represent non-holiday observations rather than missing values.

### Interpretation

The analysis confirmed that the dataset contains no missing or empty values. No data imputation or cleaning procedures were required before analysis.

---

## Data Type Validation

Data types were verified using the Advanced Editor and the Changed Type transformation step.

| Column | Data Type |
|----------|----------|
| holiday | Text |
| temp | Decimal Number |
| rain_1h | Whole Number |
| snow_1h | Whole Number |
| clouds_all | Whole Number |
| weather_main | Text |
| weather_description | Text |
| date_time | DateTime |
| traffic_volume | Whole Number |

### Interpretation

All columns were assigned appropriate data types. Numerical attributes were stored as numeric fields, categorical variables were stored as text fields, and date_time was correctly identified as a DateTime field. No data type corrections were necessary.

---

## Hour Extraction

A new column named Hour was extracted from the date_time field.

Transformation:

```text
Add Column → Time → Hour → Hour
```

The resulting column contains values ranging from 0 to 23.

### Interpretation

The Hour field enables the analysis of hourly traffic behaviour and supports the identification of peak and off-peak traffic periods.

---

## Temperature Conversion

Temperature values were originally stored in Kelvin.

A new field named Temperature_Celsius was created using:

```text
Temperature_Celsius = temp − 273.15
```

### Interpretation

Converting temperature values into degrees Celsius improves readability and makes weather-related analysis easier to interpret.

---

## Traffic Category Creation

A new field named Traffic_Category was created using the following rules:

| Traffic Volume | Category |
|---------------|----------|
| Less than 4500 | Low |
| 4500 to 5500 | Medium |
| Greater than 5500 | High |

### Interpretation

Traffic_Category simplifies traffic analysis by grouping observations into meaningful traffic levels. This feature supports dashboard filtering and visualisation of congestion patterns.

---

## Conclusion

The data quality assessment confirmed that the dataset is complete and suitable for analysis. No missing values or data type issues were identified. Additional columns including Hour, Temperature_Celsius and Traffic_Category were successfully created to support further traffic intelligence analysis and dashboard development.