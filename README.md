# Deloitte Australia Data Analytics Job Simulation on Forage - November 2025


**📖 Project Overview**

This project is inspired by the Deloitte Australia Data Analytics Job Simulation (Forage, November 2025).

<img width="770" height="435" alt="Image" src="https://github.com/user-attachments/assets/88bc32f3-04ec-4fd5-9df4-65f8daed5662" />


This project focuses on analyzing Daikibo’s factory telemetry data to understand machine health, downtime patterns and overall operational efficiency.

The tasks include data cleaning, KPI development, dashboard building and generating insights for business stakeholders.


**📁 Dataset Overview**

Source: Machine telemetry JSON file

Structure: Nested Records and Lists

Columns: Device details, timestamps, health status, metric values

Goal: Convert raw factory telemetry into actionable insights



**🛠 Tools & Technologies**
Power BI, Power Query, SQL, Microsoft Excel



**🧹 Data Cleaning**

**a) Flattened Nested JSON Data**
   
Converted the raw JSON file into a clean tabular format by using Power Query’s To Table and Expand options. All nested Record/List fields were expanded step-by-step and only the required columns were selected to keep the dataset structured and readable.

**b) Converted Unix Timestamp to Date/Time**
   
Transformed the timestamp column from milliseconds into a proper Date/Time format using a custom Power Query formula. This ensured accurate time-based analysis and converted values like 1619826600000 into 30-04-2021 23:50:00.



**🔄 Data Transformation**

• Created calculated columns for device status classification, where value 10 is added for status = 'unhealthy'.

• Converted timestamp into separate Date, Time and Hour fields



**📊 Analysis Performed**

• Identified hours with maximum machine downtime

• Evaluated Healthy vs Unhealthy device distribution

• Tracked machine activity trends across time

• Detected anomalies and patterns in factory performance

• Calculated % overall factory health using KPIs

<img width="769" height="437" alt="Image" src="https://github.com/user-attachments/assets/e4c2c4e6-b2f0-4da0-a77c-4f35502abcc0" />


**📈 Power BI Dashboards**

• Overview Overall KPI Cards

• Factory Performance 

• Tracking Unhealthy Device

• Timeline of device downtime analysis

<img width="773" height="437" alt="Image" src="https://github.com/user-attachments/assets/b57c37bd-a8cf-47c8-8555-34c530abc91d" />

These visuals help quickly understand bottlenecks, efficiency and potential operational risks.



**⭐ Key Insights Drawn**

• The overall health of the factories is 99.94%.

• The Daikibo factories in Japan has the highest number of unhealthy device with more downtime.

• Machines - Laser Welder and laser cutter has the highest downtime.

• Revealed patterns in device health fluctuations over hour of the day. 7am in the morning shows the highest downtime of machines.

• Provided clear KPIs for monitoring machine success/failure rates.



**📝 Credits**

This project incorporates skills practiced during the Deloitte Australia – Data Analytics Virtual Job Simulation (Forage, Nov 2025).
