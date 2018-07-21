<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Validator;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

         Validator::extend('arabic', function($attribute, $value, $parameters, $validator) {
            if(!empty($value)){
                return true;
            }
                return false;
        });
        Validator::extend('rakam_ar', function($attribute, $value, $parameters, $validator) {
            if(!is_numeric($value)){
                return true;
            }
                return false;
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
