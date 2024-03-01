# Pharmacy Project

This project is a back-end system designed for a pharmacy to streamline its business processes, including authentication, medication inventory management, and customer record management. The system enforces user roles and permissions for different actions to ensure security and efficiency.

### Libraries Used

#### Laravel Sanctum

-   Official Laravel package for API token authentication.
-   [Documentation](https://laravel.com/docs/10.x/sanctum)

#### Spatie Laravel Permission

-   Package for managing user permissions and roles in Laravel applications.
-   [Documentation](https://spatie.be/docs/laravel-permission/v6/introduction)

## Run Locally

### Prerequisites

-   PHP ^8.1
-   Laravel 10
-   SQLite (3.39.2)
-   Postman (for testing)

Clone the project

```bash
  git clone https://github.com/dmunasingha/pharmacy-project
```

Go to the project directory

```bash
  cd pharmacy-project
```

Install PHP dependencies

```bash
  composer install
```

Copy the Enviroment File

```bash
  cp .env.example .env
```

Generate Application Key

```bash
  php artisan key:generate
```

Run Database Migrations (without dummy data)

```bash
  php artisan migrate
```

or

Run Database Migrations (with dummy data)

```bash
  php artisan migrate --seed
```

Start the development server

```bash
  php artisan serve
```

## Includes

-   Project
-   ER Diagram (er.svg & er.mwb)
-   Postman Collection (Pharmacy Application. postman_collection.json)
-   Database Export (database/export.sql)

## API Reference

### Authentication

To access the API endpoints, you need to authenticate your requests using a bearer token. Follow these steps to obtain a bearer token:

#### Using Postman

When login a token will be received copy it and go to the authorization tab select the type as Bearer Token and paste the copied token in it (Individualy on each HTTP Requests or for the Collection)

#### Login

```http
  POST /api/login
```

| Parameter  | Type     | Description   |
| :--------- | :------- | :------------ |
| `email`    | `string` | **Required**. |
| `password` | `string` | **Required**. |

#### Register User

```http
  POST /api/register
```

| Parameter               | Type     | Description   |
| :---------------------- | :------- | :------------ |
| `name`                  | `string` | **Required**. |
| `email`                 | `string` | **Required**. |
| `password`              | `string` | **Required**. |
| `password_confirmation` | `string` | **Required**. |
| `role`                  | `string` | **Required**. |

#### Logout

```http
  POST /api/logout
```

#### Get all roles

```http
  GET /api/roles
```

#### Create Role

```http
  POST /api/roles
```

| Parameter | Type     | Description   |
| :-------- | :------- | :------------ |
| `name`    | `string` | **Required**. |

#### Get Role Details

```http
  GET /api/roles/{id}
```

#### Update Role

```http
  POST /api/roles/{id}
```

| Parameter | Type     | Description   |
| :-------- | :------- | :------------ |
| `name`    | `string` | **Required**. |

#### Delete Role

```http
  DELETE /api/roles/{id}
```

#### Assign Permission to Role

```http
  POST /api/roles/permissions
```

| Parameter    | Type     | Description                   |
| :----------- | :------- | :---------------------------- |
| `role`       | `string` | **Required**. Role Name       |
| `permission` | `string` | **Required**. Permission Name |

#### Get all medications

```http
  GET /api/medications
```

#### Create medication

```http
  POST /api/medications
```

| Parameter     | Type     | Description   |
| :------------ | :------- | :------------ |
| `name`        | `string` | **Required**. |
| `description` | `string` | **Required**. |
| `quantity`    | `string` | **Required**. |

#### Get medication details

```http
  GET /api/medications/{id}
```

#### Update medication

```http
  POST /api/medications/{id}
```

| Parameter     | Type     | Description   |
| :------------ | :------- | :------------ |
| `name`        | `string` | **Required**. |
| `description` | `string` | **Required**. |
| `quantity`    | `string` | **Required**. |

#### Soft Delete medication

```http
  DELETE /api/medications/delete/{id}
```

#### Force Delete medication

```http
  DELETE /api/medications/{id}
```

#### Get all customers

```http
  GET /api/customers
```

#### Create customer

```http
  POST /api/customers
```

| Parameter | Type     | Description   |
| :-------- | :------- | :------------ |
| `name`    | `string` | **Required**. |
| `contact` | `string` | **Required**. |
| `email`   | `string` | Optional.     |
| `address` | `string` | **Required**. |

#### Get customer details

```http
  GET /api/customers/{id}
```

#### Update customer

```http
  POST /api/customers/{id}
```

| Parameter | Type     | Description   |
| :-------- | :------- | :------------ |
| `name`    | `string` | **Required**. |
| `contact` | `string` | **Required**. |
| `email`   | `string` | Optional.     |
| `address` | `string` | **Required**. |

#### Soft Delete customer

```http
  DELETE /api/customers/delete/{id}
```

#### Force Delete customer

```http
  DELETE /api/customers/{id}
```

#### Get all users

```http
  GET /api/users
```

#### Get user details

```http
  GET /api/users/{id}
```

#### Delete user

```http
  DELETE /api/users/delete/{id}
```
