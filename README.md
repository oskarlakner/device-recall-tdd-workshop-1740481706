# Device Recall TDD Workshop

This repository contains the code for the **Device Recall TDD Workshop**. In this hands-on project, you'll build a Ruby application that reads large CSV files, applies recall rules based on device data, handles various sale statuses, and generates final reports. You'll learn Test-Driven Development (TDD), build modular Service Objects, and harness the power of dry‑rb libraries for robust business logic.

## About

The goal of this project is to guide you through creating a production-ready Ruby application using best practices and advanced patterns. Core features include:

- **CSV Data Loading & Validation:** Efficiently read large CSV files and separate valid and invalid records using a dedicated dry‑validation schema.
- **Recall Qualification:** Determine device recall status with a robust, extendable service using dry‑transaction and TDD.
- **Sale Status Handling:** Implement distinct actions based on device sale status (sold, in_stock, returned) with isolated Service Objects.
- **Reporting:** Generate summary reports that count devices per recall category and handle partial processing failures.

## Getting Started

1. **Clone the repository.**
2. **Install dependencies:**

   ```bash
   bundle install
   ```

3. **Run tests to ensure everything is set up correctly:**

   ```bash
   rspec
   ```

4. **Generate the CSV File:**

   This project includes a Ruby script to generate a large CSV file with device data. To create the CSV, run:

   ```bash
   ruby generate_large_csv.rb
   ```

   This will produce a file named `devices.csv` with 1,000,000 rows of sample device data.

## Best Practices

- **TDD & Service Objects:** The project is built using TDD and modular Service Objects for clear, maintainable code.
- **Dry‑rb Ecosystem:** Utilizes dry‑validation, dry‑transaction, and dry‑monads for composable and robust business logic.
- **Scalable Architecture:** Designed to handle large datasets efficiently and can be easily extended with new features.

Happy coding and enjoy the workshop!
