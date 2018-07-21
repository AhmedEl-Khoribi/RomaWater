<?php

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
  $aboutus = \DB::table('about_uses')->find(1);
  $categories = \App\Category::all();
  $products = \App\Product::all();
  $sort_p = \App\Product::orderBy('created_at', 'desc')->take(4)->get();

    return view('index', compact('categories', 'products', 'aboutus', 'sort_p'));
});

Route::get('/about_us', function() {
  $aboutus = \DB::table('about_uses')->find(1);
  $categories = \App\Category::all();

  return view('about', compact('aboutus', 'categories'));
});

Route::get('/products', function() {
    $products = \App\Product::paginate(8);

  return view('products', compact('products'));
});

Route::get('/faqs', function() {
    $faqs = \App\Faq::all();

  return view('FAQ', compact('faqs'));
});

Route::get('/contact', function() {
    $contact = \DB::table('contact_uses')->find(1);

  return view('contact', compact('contact'));
});

  Route::post('/contact', 'FrontController@send');

  Route::get('/product/{id}', 'FrontController@showPro');

  Route::get('/category_products/{id}', 'FrontController@showProCat');

  Route::post('/buy/{id}', 'FrontController@formClie');

  Route::get('/admin/login', 'AdminAuth\LoginController@showLoginForm')->name('login');
  Route::post('/admin/login', 'AdminAuth\LoginController@login');
  
Route::group(['prefix' => 'admin'], function () {
  Route::get('/login', 'AdminAuth\LoginController@showLoginForm')->name('login');
  Route::post('/login', 'AdminAuth\LoginController@login');
  Route::get('/logout', 'AdminAuth\LoginController@logout')->name('logout');

  Route::get('/register', 'AdminAuth\RegisterController@showRegistrationForm')->name('register');
  Route::post('/register', 'AdminAuth\RegisterController@register');

//Categories
  Route::get('/categories', 'CategoryController@index');
  Route::get('/add_category', 'CategoryController@create');
  Route::post('/add_category', 'CategoryController@store');
  Route::get('/edit_category/{id}', 'CategoryController@edit');
  Route::patch('/edit_category/{id}', 'CategoryController@update');
  Route::get('/delete_category/{id}', 'CategoryController@destroy');

//Products
  Route::get('/products', 'ProductController@index');
  Route::get('/add_product', 'ProductController@create');
  Route::post('/add_product', 'ProductController@store');
  Route::get('/edit_product/{id}', 'ProductController@edit');
  Route::patch('/edit_product/{id}', 'ProductController@update');
  Route::get('/delete_product/{id}', 'ProductController@destroy');

//site info
  Route::get('/site_info', 'SiteInfoController@index');
  Route::get('/edit_info/{id}', 'SiteInfoController@edit');
  Route::patch('/updateSiteInfo/{id}', 'SiteInfoController@update');

//FAQS
  Route::get('/faqs', 'FaqController@showFAQ');
  Route::get('/edit_faqs/{id}', 'FaqController@editFAQ');
  Route::patch('/updateFAQS/{id}', 'FaqController@updateFAQ');
  Route::get('/createFaqs', 'FaqController@createFAQ');
  Route::post('/storeFaq', 'FaqController@storeFAQ');
  Route::get('/delete_faq/{id}', 'FaqController@destroyFaq');

//About us
  Route::get('/about-us', 'AboutUsController@showAboutUs');
  Route::get('/edit_about_us/{id}', 'AboutUsController@editAboutUs');
  Route::patch('/updateAboutUs/{id}', 'AboutUsController@updateAboutUs');

//Contact us
  Route::get('/contact_us', 'ContactUsController@showContactUs');
  Route::get('/edit_contact_us/{id}', 'ContactUsController@editContactUs');
  Route::patch('/updateContactUs/{id}', 'ContactUsController@updateContactUs');
//Message 
  Route::get('/mailbox', 'MailController@index');
  Route::get('/make_check/{id}', 'MailController@check');
  Route::get('/contact', 'MailController@fromForm');
  Route::get('/see/{id}', 'MailController@see');

  Route::post('/password/email', 'AdminAuth\ForgotPasswordController@sendResetLinkEmail')->name('password.request');
  Route::post('/password/reset', 'AdminAuth\ResetPasswordController@reset')->name('password.email');
  Route::get('/password/reset', 'AdminAuth\ForgotPasswordController@showLinkRequestForm')->name('password.reset');
  Route::get('/password/reset/{token}', 'AdminAuth\ResetPasswordController@showResetForm');
});
