---
title: "Tracking Occupancy In Clinic Waiting Rooms or Restaurants"
excerpt: "Application was created using actual live streamed video and computer vision tracking packages such as OpenCV, YOLOv8, DeepSORT. <br/><img src='/images/OccupancyOverTime.png'>"
collection: portfolio
category: "Complete Projects"
tags:
  - processimprovement
  - computervision
  - python
  - opencv
  - yolov8
---

## Concept Ideation and Further Exploration
This concept was derived from my background in exploring queues, wait times, manufacturing times in my career as a product manage in health care software and background in industrial engineering. 
Eventually this information would be useful in feeding simulation software for companies or integrating into existing applications.

[Github Repository](https://github.com/alstonnguyen/Occupancy-Tracking-in-Python
)
# Occupancy & Wait Time Tracking  

A **computer vision-based tracking system** designed to monitor **occupancy levels and waiting times** in spaces like waiting rooms, restaurants, and public areas. Using **YOLOv8 for object detection** and **DeepSORT for tracking**, this project anonymously tracks individuals, estimates how long they stay, and analyzes movement patterns in defined zones.

---

## Features  

- **Real-Time Person Tracking** – Uses **YOLOv8 + DeepSORT** to detect and track people in video footage.  
- **Anonymized Data Processing** – Tracks individuals **without storing personal data**, ensuring privacy compliance.  
- **Zone-Based Occupancy Analysis** – Detects movement within predefined zones (**waiting areas, tables, exits**).  
- **Wait Time Calculation** – Measures **entry & exit times** to estimate **average wait times per individual**.  
- **Data Visualization** – Generates **scatter plots, occupancy trends, and wait time analytics** using Matplotlib.  

---

## Technologies Used  

- **Python** – Main programming language  
- **OpenCV** – Image processing and real-time video handling  
- **YOLOv8** – Person detection  
- **DeepSORT** – Multi-object tracking  
- **Pandas** – Data processing and handling  
- **Matplotlib** – Visualization of movement patterns and occupancy trends  
- **Cryptography** – Data encryption for privacy  

---

## License
Distributed under MIT License. See `LICENSE.txt` for more information.
