<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::redirect('/', 'login', 301);

Route::middleware(['ifnotauth'])->group(function () {
    Route::get('/login', [AuthController::class, 'loginview'])->name('login.view');
    Route::post('/login/submit', [AuthController::class, 'loginsubmit'])->name('login.submit');
});
Route::get('/logout', [AuthController::class, 'logout'])->name('logout');


Route::middleware(['ifauth'])->group(function () {
    // Customer Route
    Route::get('/dashboard', [AuthController::class, 'dashboard'])->name('dashboard');
    Route::get('/Customer', [CustomerController::class, 'CustomerRecord'])->name('customer');
    Route::get('/Customer/add', [CustomerController::class, 'CustomerAdd'])->name('customer.add');
    Route::post('/Customer/addSubmit', [CustomerController::class, 'CustomerAddSubmit'])->name('customer.addSubmit');
    Route::get('/Customer/edit/{id}', [CustomerController::class, 'CustomerEdit'])->name('customer.edit');
    Route::post('/Customer/update/submit/{id}', [CustomerController::class, 'CustomerEditSubmit'])->name('customer.editSubmit');
    Route::get('/Customer/delete/{id}', [CustomerController::class, 'CustomerDelete'])->name('customer.delete');
    Route::get('/Customer/export', [CustomerController::class, 'export'])->name('customer.export');


    // Products Route
    Route::get('/Product', [ProductController::class, 'ProductRecord'])->name('product');
    Route::get('/Product/add', [ProductController::class, 'ProductAdd'])->name('product.add');
    Route::post('/Product/addSubmit', [ProductController::class, 'ProductAddSubmit'])->name('product.addSubmit');
    Route::get('/Product/edit/{id}', [ProductController::class, 'ProductEdit'])->name('product.edit');
    Route::post('/Product/update/submit/{id}', [ProductController::class, 'ProductEditSubmit'])->name('product.editSubmit');
    Route::get('/Product/delete/{id}', [ProductController::class, 'ProductDelete'])->name('product.delete');
    Route::get('/Product/export', [ProductController::class, 'export'])->name('product.export');


    // User Route
    Route::get('/User', [UserController::class, 'UserRecord'])->name('user');
    Route::get('/User/add', [UserController::class, 'UserAdd'])->name('user.add');
    Route::post('/User/addSubmit', [UserController::class, 'UserAddSubmit'])->name('user.addSubmit');
    Route::get('/User/edit/{id}', [UserController::class, 'UserEdit'])->name('user.edit');
    Route::post('/User/update/submit/{id}', [UserController::class, 'UserEditSubmit'])->name('user.editSubmit');
    Route::get('User/passwordform/{id}', [UserController::class, 'UserPasswordUpdate'])->name('user.password.update');
    Route::post('User/passwordform/Submit/{id}', [UserController::class, 'UserPasswordUpdateSubmit'])->name('user.password.updateSubmit');
    Route::get('/User/delete/{id}', [UserController::class, 'UserDelete'])->name('user.delete');

});



