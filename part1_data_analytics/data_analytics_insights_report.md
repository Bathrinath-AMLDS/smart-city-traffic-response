# Data Analytics Insights Report

## Smart City Traffic Intelligence: Key Findings and Implications

### Executive Summary

This report summarises the key findings obtained from SQL analysis, descriptive statistics, probability analysis and Power BI visualisations of the Metro Interstate Traffic Volume dataset. The objective was to understand traffic behaviour, identify congestion patterns and evaluate the influence of weather conditions on traffic activity.

The findings provide actionable insights that can support smart-city mobility planning and traffic management decision-making.

---

## 1. Traffic Trends and Growth

Analysis of annual traffic volume revealed significant variation across the study period.

Traffic volume increased substantially between 2012 and 2013, experienced a decline during 2014 and 2015, and then recovered strongly during 2016 and 2017. The highest overall traffic volume was observed in 2017.

The increase in traffic demand over time suggests growing pressure on transport infrastructure and highlights the importance of proactive congestion management strategies.

### Implication

Smart-city planners should anticipate increasing travel demand and continue investing in intelligent traffic monitoring and adaptive traffic control systems.

---

## 2. Traffic Variability

Descriptive statistics showed:

- Mean Traffic Volume: 3,259.82 vehicles
- Median Traffic Volume: 3,380 vehicles
- Standard Deviation: 1,986.84 vehicles
- Range: 7,280 vehicles

The high standard deviation and wide range indicate substantial variation in traffic conditions throughout the day and year.

### Implication

Average traffic values alone do not adequately describe real traffic conditions. Traffic management systems should focus on identifying and responding to peak congestion periods rather than relying purely on long-term averages.

---

## 3. Congestion Probability

Congestion was defined as traffic volume greater than 5,500 vehicles.

Probability analysis produced the following results:

- P(Congestion) = 0.1473
- P(Clear Weather) = 0.2778
- P(Congestion AND Clear Weather) = 0.0366

These results indicate that severe congestion occurs in approximately 15% of recorded observations.

### Implication

Congestion events are relatively infrequent but impactful. Smart traffic systems should prioritise prediction and mitigation of high-congestion periods to improve traffic flow and reduce delays.

---

## 4. Weather and Congestion

Conditional probability analysis showed:

- P(Clear Weather | Congestion) = 0.2483
- P(High Temperature | Congestion) = 0.2630
- Odds Ratio (Clear vs Cloudy Weather) = 0.7352

Cloudy conditions were associated with higher average traffic volumes than clear weather conditions. However, the differences were relatively moderate.

### Implication

Weather influences traffic behaviour, but it is not the primary determinant of congestion. Traffic management strategies should incorporate weather information as a supporting factor rather than relying on it as the main predictor.

---

## 5. Temperature and Traffic Relationship

Correlation analysis produced a correlation coefficient of:

- r = 0.1303

This indicates a very weak positive relationship between temperature and traffic volume.

The Power BI scatter plot confirmed that traffic volume tends to increase slightly as temperatures rise, but considerable variability remains across all temperature ranges.

### Implication

Temperature alone cannot be used to accurately predict traffic conditions. Additional variables such as time of day, commuting patterns, holidays and road conditions are likely to have greater predictive value.

---

## 6. Daily and Hourly Traffic Patterns

Power BI visualisations revealed strong temporal traffic patterns.

Traffic volume is lowest during the early morning hours and increases rapidly during normal commuting periods. The highest average traffic volume occurs at approximately 4:00 PM, representing the primary daily congestion period.

The daily trend analysis also demonstrated recurring fluctuations throughout 2015, 2016 and 2017, indicating stable behavioural traffic patterns across years.

### Implication

Traffic control strategies should focus particularly on afternoon peak periods. Dynamic signal timing and congestion monitoring systems could be deployed during these periods to improve mobility and reduce delays.

---

## Key Recommendations for the Smart-City Mobility Team

1. Prioritise congestion management during afternoon peak periods, particularly around 4:00 PM.

2. Implement predictive traffic monitoring systems focused on high-risk congestion periods rather than average traffic conditions.

3. Integrate weather information into traffic forecasting models, while recognising that weather is only a secondary influence on congestion.

4. Continue monitoring long-term traffic growth trends to support future capacity planning and infrastructure investment decisions.

5. Develop advanced machine learning models in subsequent phases of the project using temporal, weather and traffic variables to improve congestion prediction accuracy.

---

## Conclusion

The analysis demonstrates that traffic conditions are highly dynamic and influenced primarily by temporal travel patterns. While weather and temperature affect traffic behaviour, their overall impact is relatively weak compared with factors such as commuting schedules and peak travel demand.

The findings support the use of intelligent traffic monitoring, predictive analytics and adaptive congestion management strategies as part of a broader smart-city mobility initiative.