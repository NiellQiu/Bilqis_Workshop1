# Dress Rental Management System

A comprehensive C++ application for managing dress rental operations with MySQL database integration.

## Features

### Core Modules

1. **Customer Management (CRUDS)**
   - Create, Read, Update, Delete, Search customers
   - Age validation (≥18 years)
   - IC number uniqueness validation
   - Active rental tracking

2. **Dress Inventory Management (CRUDS)**
   - Complete inventory management
   - Real-time availability tracking
   - Category-based organization
   - Condition and status management

3. **Rental Transaction Management**
   - Multi-dress rentals (1-5 items per rental)
   - Automatic due date calculation
   - Late fee assessment
   - Overlap prevention for bookings
   - Maximum 3 active rentals per customer
   - Rental duration validation (1-14 days)

4. **Payment Processing**
   - Multiple payment methods (Cash, Credit Card, Debit Card, Online)
   - Payment status management
   - Receipt generation
   - Payment tracking per rental

5. **Advanced Reporting & Analytics**
   - Monthly sales analysis with GROUP BY and aggregation
   - Inventory valuation reports
   - Dress utilization rates with JOIN operations
   - Customer activity analytics
   - Customer loyalty analysis
   - Profit margin calculations
   - Overdue items tracking
   - Dashboard overview

## Prerequisites

- **XAMPP** (or MySQL server)
- **MySQL Connector/C++** library
- **g++ compiler** (GCC)
- **C++11 or later**

## Installation

### 1. Install MySQL Connector/C++

Download and install MySQL Connector/C++ from:
https://dev.mysql.com/downloads/connector/cpp/

### 2. Setup Database

1. Start XAMPP and ensure MySQL is running
2. Open phpMyAdmin (http://localhost/phpmyadmin)
3. Import the `database_schema.sql` file to create the database and tables

Alternatively, run the SQL file from command line:
```bash
mysql -u root -p < database_schema.sql
```

### 3. Compile the Application

```bash
g++ *.cpp -lmysqlcppconn -o rental_system -I/path/to/mysql-connector-c++/include -L/path/to/mysql-connector-c++/lib
```

**For Windows with XAMPP:**
```bash
g++ *.cpp -lmysqlcppconn -o rental_system.exe -I"C:\xampp\mysql\include" -L"C:\xampp\mysql\lib"
```

**For Linux:**
```bash
g++ *.cpp -lmysqlcppconn -o rental_system -I/usr/include/mysql-cppconn-8 -L/usr/lib/x86_64-linux-gnu
```

### 4. Run the Application

```bash
./rental_system
```

Or on Windows:
```bash
rental_system.exe
```

## Database Configuration

The system uses the following default configuration:
- **Host:** localhost:3306
- **User:** root
- **Password:** (empty)
- **Database:** dress_rental_db

To modify these settings, edit `DatabaseManager.cpp`.

## System Architecture

- **MVC Pattern:** Separation of concerns with managers for each module
- **Singleton Database Manager:** Centralized database connection
- **Prepared Statements:** SQL injection prevention
- **Transaction Support:** ACID compliance for critical operations
- **Error Handling:** Comprehensive exception handling

## Business Rules

1. Customers must be at least 18 years old
2. Maximum 3 active rentals per customer
3. Rental duration: 1-14 days
4. Maximum 5 dresses per rental
5. Payment must be completed before rental commencement
6. Automatic late fee calculation (RM 10 per day)
7. IC number must be unique

## File Structure

```
.
├── main.cpp                 # Main program entry point
├── DatabaseManager.h/cpp    # Database connection management
├── CustomerManager.h/cpp    # Customer CRUDS operations
├── DressManager.h/cpp       # Dress inventory management
├── RentalManager.h/cpp     # Rental transaction processing
├── PaymentManager.h/cpp     # Payment processing
├── ReportManager.h/cpp      # Advanced reporting and analytics
├── database_schema.sql      # Database schema
└── README.md                # This file
```

## Usage Examples

### Creating a Customer
1. Select "Customer Management" from main menu
2. Choose "Add New Customer"
3. Enter customer details (Name, IC, Phone, Email, Address, DOB)
4. System validates age and IC uniqueness

### Creating a Rental
1. Select "Rental Transaction Management"
2. Choose "Create New Rental"
3. Enter Customer ID, Rental Date, Duration (1-14 days)
4. Enter 1-5 Dress IDs
5. System validates all business rules and creates rental

### Processing Payment
1. Select "Payment Processing"
2. Choose "Process Payment"
3. Enter Rental ID
4. Enter payment details (Amount, Method, Date)
5. System generates receipt

### Generating Reports
1. Select "Reports & Analytics"
2. Choose desired report type
3. Enter required parameters (if any)
4. View formatted reports with charts

## Troubleshooting

### Connection Issues
- Ensure MySQL/XAMPP is running
- Verify database exists: `dress_rental_db`
- Check user credentials in `DatabaseManager.cpp`

### Compilation Errors
- Verify MySQL Connector/C++ is installed
- Check include and library paths
- Ensure C++11 standard is enabled

### Runtime Errors
- Check database connection
- Verify all tables exist (run `database_schema.sql`)
- Check file permissions

## License

This project is provided as-is for educational purposes.

## Support

For issues or questions, please check:
- Database connection settings
- MySQL Connector/C++ installation
- Compiler compatibility
