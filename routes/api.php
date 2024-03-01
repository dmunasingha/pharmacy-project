<?php

use App\Http\Controllers\Auth\LoginRegisterController;
use App\Http\Controllers\Auth\RoleController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\MedicationController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/


// Public routes of authtication
Route::controller(LoginRegisterController::class)->group(function () {
    Route::post('/register', 'register')->middleware('can:create users');
    Route::post('/login', 'login');
});

// Protected routes of product and logout
Route::middleware('auth:sanctum')->group(function () {
    Route::post('/logout', [LoginRegisterController::class, 'logout']);

    Route::controller(UserController::class)->group(function () {
        Route::get('/users', 'index')->middleware('can:manage users');
        Route::get('/users/{id}', 'show')->middleware('can:manage users');
        Route::delete('/users/{id}', 'destroy')->middleware('can:delete users');
    });

    Route::controller(MedicationController::class)->group(function () {
        Route::get('/medications', 'index')->middleware('can:manage medications');
        Route::get('/medications/{id}', 'show')->middleware('can:manage medications');
        Route::post('/medications', 'store')->middleware('can:create medications');
        Route::post('/medications/{id}', 'update')->middleware('can:edit medications');
        Route::delete('/medications/delete/{id}', 'delete')->middleware('can:soft-delete medications');
        Route::delete('/medications/{id}', 'destroy')->middleware('can:delete medications');
    });
    Route::controller(CustomerController::class)->group(function () {
        Route::get('/customers', 'index')->middleware('can:manage customers');
        Route::get('/customers/{id}', 'show')->middleware('can:manage customers');
        Route::post('/customers', 'store')->middleware('can:create customers');
        Route::post('/customers/{id}', 'update')->middleware('can:edit customers');
        Route::delete('/customers/delete/{id}', 'delete')->middleware('can:soft-delete customers');
        Route::delete('/customers/{id}', 'destroy')->middleware('can:delete medications');
    });

    Route::controller(RoleController::class)->group(function () {
        Route::get('/roles', 'index')->middleware('can:manage roles');
        Route::get('/roles/{id}', 'show')->middleware('can:manage roles');
        Route::post('/roles', 'store')->middleware('can:create roles');
        Route::post('/roles/permissions', 'assignPermissionToRole'); //->middleware('can:assign permissions');
        Route::post('/roles/{id}', 'update')->middleware('can:edit roles');
        Route::delete('/roles/{id}', 'destroy')->middleware('can:delete roles');
    });
});
