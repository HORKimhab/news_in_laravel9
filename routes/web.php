<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Models\Post;
use App\Models\User;
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
    // throw new \Exception("Something weng wrong, check code again...!");

    // Blade::render
    // https://laravel.com/docs/9.x/blade#rendering-views-for-collections

    // return Blade::render('Hello, {{ $name }} @if (false) (Condition) @else HKimhab Laravel 9 with Condition. @endif', ['name' => 'Laravel9 Universe, ']);

    // return view('welcome');


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

    return Post::search('commodi')->get();
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

// Method 1
// without: scopeBindings()
// URL: https://laravel.com/docs/9.x/releases#forced-scoping-of-route-bindings
/* Route::get('/users/{user}/posts/{post:id}', function (User $user, Post $post) {
    return $post;
}); */


// Method 2
// with: scopeBindings()
Route::get('/users/{user}/posts/{post}', function (User $user, Post $post) {
    return $post;
})->scopeBindings();
