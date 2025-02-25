---
title: "KafkaTrace"
excerpt: "Visualization and Instrumentation of Apps Run on Apache Kafka <br/><img src='/images/KafkaTrace.png'>"
collection: portfolio
---

## Table of Contents
- [About Kafka Trace](#about-kafka-trace)
- [Features](#features)
- [User Guide](#user-guide)
- [License](#license)

## About KafkaTrace
Based on OpenTelemetry's standards, KafkaTrace streamlines the process of visualizing your Apache Kafka Clients by packaging together the necessary instrumentation files with popular open source monitoring UIs (Jaeger, Zipkin, and Prometheus). This documentation describes how to implement KafkaTrace.

## Features
- Intuitive all-in-one documentation to implement distributive tracing for Kafka.
- Authentication for Google and GitHub OAuth.

## User Guide
#### Prerequisites:
You must have Docker Desktop installed and running!
<br>

**IMPORTANT REMINDER**: Make sure the Kafka Cluster you want to trace has a working producer and consumer client.

- **STEP 1**: Install npm package
    ```bash
    npm install kafkatrace
    ```
- **STEP 2**: Build and run the preconfigured containers
    ```typescript
    import { composer } from 'kafkatrace';
    composer();
    ```
- **STEP 3**: Add to each service file and replace [Service Name] as required
    ```typescript
    import { tracer } from 'kafkatrace';
    tracer('[Service Name]');
    ```
- **STEP 4**: Navigate to localhost port: 16686 for Jaeger, 9411 for Zipkin, 9090 for Prometheus or simply login to the website

**Below is a demo:**

![demo-vid](https://github.com/oslabs-beta/KafkaTrace/assets/101201710/38c7a951-f58d-43a2-98fd-e7a348f83d94)

For an in-depth look at KafkaTrace and all its features, [KafkaTrace](https://www.kafkatrace.com) or the [Medium Article](https://medium.com/@kafkatrace/kafka-trace-9eba2ac16eae)



## License
Distributed under MIT License. See `LICENSE.txt` for more information.
