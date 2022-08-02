<?php

use Illuminate\Support\Facades\Route;

Route::group(['prefix' => 'companies'], function() {
    Route::get('foundations', '\App\Http\Controllers\CompanyController@getCompaniesByFoundations');
    Route::get('activities', '\App\Http\Controllers\CompanyController@getCompaniesByActivities');
    Route::post('get', '\App\Http\Controllers\CompanyController@getByIds');
    Route::put('{id}', '\App\Http\Controllers\CompanyController@update')->where('id', '[0-9]+');
    Route::post('/', '\App\Http\Controllers\CompanyController@store');
});
