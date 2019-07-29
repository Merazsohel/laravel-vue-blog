<?php



Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
//Route::get('/{anypath}','HomeController@index')->where('path','.*');
Route::post('/add-category', 'CategoryController@add_category');
Route::get('/category', 'CategoryController@all_category');