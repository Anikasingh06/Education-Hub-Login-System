# Education Hub – Role Based Login System

## Project Description
Education Hub is a role-based login system developed using **ASP.NET Web Forms (VB.NET)** and **SQL Server 2008**.  
The application allows users to log in as **Student, Teacher, or Admin** with secure credential validation.

This project demonstrates server-side event handling, ADO.NET database connectivity, and basic security practices.

---

## Technologies Used
- ASP.NET Web Forms
- VB.NET
- SQL Server 2008
- ADO.NET
- HTML & CSS
- Visual Studio 2010

---

## Features
- Role-based authentication (Student / Teacher / Admin)
- Secure database access using parameterized queries
- SQL Injection prevention
- Server-side validation
- Clean and simple user interface

---

## Database Details
**Database Name:** `Registration_formDB`  
**Table:** `Users`

```sql
CREATE TABLE Users (
    UserID INT IDENTITY PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(50) NOT NULL,
    Role VARCHAR(20) NOT NULL
);
