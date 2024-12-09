# E-commerce Product Management System

A feature-rich product management system built for an e-commerce platform using PHP/Laravel & JavaScript. The application includes user authentication, CRUD operations, secure API integration, and a dynamic frontend for product management.

---

## Features

### 1. User Authentication
- **Registration and Login**: Implemented using Laravel's built-in authentication system.
- **Access Control**: Only authenticated users can access the product management features.

### 2. Product Management (CRUD)
- **Database Schema**: Products are managed with the following fields:
    - `id`, `user_id`, `name`, `description`, `price`, `quantity`, `created_at`, `updated_at`.
- **CRUD Operations**:
    - Create, Read, Update, Delete functionalities implemented using Laravel Eloquent ORM.
- **Pagination**: Implemented for improved performance in the product list.

### 3. RESTful API Integration
- **Secure API Endpoint**: Built for fetching product details, accessible only to authenticated users.
- **Frontend Integration**: API integrated with a dynamic JavaScript frontend to display product details.

### 4. Frontend Functionality
- **Dynamic Interface**: Users can add, edit, and delete products dynamically.
- **Form Validation**: User-friendly error messages and validation for inputs.
- **Real-time Product Display**: Product list dynamically updated using API responses.

### 5. Security
- **CSRF Protection**: Implemented for all form submissions.
- **Input Validation**: All inputs are validated and sanitized to prevent vulnerabilities.
- **Secure Password Storage**: User passwords are securely hashed.

### 6. Performance Optimization
- **Optimized Queries**: Efficient database queries for data retrieval.
- **Pagination**: Improved frontend performance by paginating the product list.

---

## Installation and Setup

### Prerequisites
- PHP => 8.1^
- Laravel => 10
- Composer
- MySQL

### Steps to Set Up

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/SamyJoe-1/ClickShareProject.git
   cd ClickShareProject
Install Dependencies:

bash
Copy code
composer install
composer require laravel/ui
php artisan ui bootstrap --auth
php artisan vendor:publish --tag=laravel-pagination
composer require laravel/sanctum
Set Up Environment Variables:
Copy .env.example to .env:
bash
Copy code
cp .env.example .env
Update database credentials in the .env file.
Set Up the Database:
Import the file DB/DB.sql into your MySQL database.
Start the Server:

bash
Copy code
php artisan serve
API Documentation
Base URL
Local: http://127.0.0.1:8000/api
Endpoints
Get All Products

GET /products
Description: Fetch all products with pagination.
Headers: Authorization: Bearer <token>
Create a Product

POST /products
Description: Add a new product.
Headers: Authorization: Bearer <token>
Body (JSON):
json
Copy code
{
"name": "Product Name",
"description": "Product Description",
"price": 100.00,
"quantity": 10
}
Update a Product

PUT /products/{id}
Description: Update a product by ID.
Headers: Authorization: Bearer <token>
Body: Same as Create a Product.
Delete a Product

DELETE /products/{id}
Description: Delete a product by ID.
Headers: Authorization: Bearer <token>
File Structure
postman/: Contains Postman API collection and environment files.
db/: Includes exported database schema (ecommerce.sql).
Deliverables
Codebase:

A complete and well-documented Laravel project.
Clear commit messages and organized file structure.
Postman Files:

Postman collection: Postman/APIs.json
Database:

Exported SQL file: DB/DB.sql
Documentation:

Advantages
Code Quality: Clean, readable, and maintainable.
Performance: Optimized database queries and API responses.
Security: Protection against common vulnerabilities.
Adherence to Best Practices: Laravel conventions, Eloquent ORM, and RESTful principles.
