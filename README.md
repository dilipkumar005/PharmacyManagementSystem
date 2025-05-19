# Pharmacy Management System

## Overview
The Pharmacy Management System is a Java desktop application designed to manage the operations of a pharmacy. It provides functionalities for managing users, medicines, sales, and billing. The system supports two main user roles: Admin and Pharmacist, each with their own dashboard and capabilities.

## Features

### Admin
- Add, view, and update user information
- View and manage user profiles
- Logout and exit the application

### Pharmacist
- Add, view, and update medicine details
- Sell medicines and generate bills
- View bills and sales history
- Manage personal profile
- Logout and exit the application

## Technologies Used
- Java SE with Swing for the graphical user interface
- MySQL database for data storage
- External libraries:
  - AbsoluteLayout for UI layout management
  - iText for PDF generation (likely for bills)
  - JCalendar for date selection
  - MySQL Connector/J for database connectivity

## Database Schema
The system uses a MySQL database named `pharmacy` with the following main tables:
- `appuser`: Stores user information including roles (Admin, Pharmacist), credentials, and contact details.
- `medicine`: Stores medicine details such as unique ID, name, company, quantity, and price.
- `bill`: Stores billing information including bill ID, date, total paid, and the user who generated the bill.

## Setup Instructions
1. Install Java SE Development Kit (JDK) 17 or higher.
2. Install MySQL Server and create a database named `pharmacy`.
3. Execute the SQL scripts or use the application to create the necessary tables (`appuser`, `medicine`, `bill`).
4. Update the database connection credentials in `dao/ConnectionProvider.java` if necessary (default is `root` user with password ``).
5. Import the project into an IDE such as NetBeans or Eclipse.
6. Build and run the project. The application starts with the Login screen.

## Usage
- Launch the application and log in using valid credentials.
- Admin users can manage users and view profiles.
- Pharmacist users can manage medicines, sell medicines, and view bills.
- Use the Logout button to safely exit the current session.
- Use the Exit button to close the application.

## Author
Developed by Dilip.
