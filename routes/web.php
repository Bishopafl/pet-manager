<?php

use App\Http\Controllers\PetsController;
use App\Models\Owner;
use App\Models\Pets;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('dashboard.index',);
});

Route::get('/petlisting', [PetsController::class, 'PetListings'])->name('pet.listings');
Route::get('/petdetails/{id}', [PetsController::class, 'PetDetails'])->name('pet.details');