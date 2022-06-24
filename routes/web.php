<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use Illuminate\Support\Str;
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

    // Throw Exception 
    // https://laravel.com/docs/9.x/errors#reporting-exceptions
    throw new \Exception("Something weng wrong, check code again...!");
    return view('welcome');


    // Method 1
    // $string = Str::of('Hello Universe from Laravel 8 with HKimhab')->upper();

    // Method 2
    // $string = str('Hello Laravel9')->upper();

    // $string = Str::of('Hello Laravel 9 to Universe');

    // Method 1
    // $string = str('Hello Laravel 9 to Universe')->slug();

    // Method 2
    // $data = "Method 2 <br/> Hello Laravel 9 to Universe";

    // $htmlString = Str::of($data)->toHtmlString();
    // $string = str()->slug($data);

    // return $htmlString;
    // return $string;
})->name('home');

Route::get('/backToHome', function () {

    // return redirect('/');

    // https://laravel.com/docs/9.x/helpers#method-to-route
    return to_route('home');
});

/* https://laravel.com/docs/9.x/routing#route-group-controllers */
Route::controller(PostController::class)->group(function () {
    Route::get('/posts', 'index');
    Route::get('/posts/{post}', 'show');
    Route::post('/posts', 'store');
});
