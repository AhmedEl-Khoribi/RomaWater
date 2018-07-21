<!DOCTYPE html>
<html lang="en">
	<head><meta http-equiv="Content-Type" content="text/html; charset=gb18030">
@php
  $lang = (isset($_GET['lang'])) ? $_GET['lang'] : 'ar' ;
  $settings = \App\SiteInfo::find(1);
@endphp	     
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<title>{{ $settings->site_name }}</title>
		<meta name="description" content="Free Bootstrap 4 Theme by uicookies.com">
		<meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

    <link href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600|Montserrat:200,300,400" rel="stylesheet">

		<link rel="stylesheet" href="/assets/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="/assets/css/animate.css">
    <link rel="stylesheet" href="/assets/fonts/ionicons/css/ionicons.min.css">

    <link rel="stylesheet" href="/assets/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/assets/css/slick.css">
    <link rel="stylesheet" href="/assets/css/slick-theme.css">

    <link rel="stylesheet" href="/assets/css/helpers.css">
    @if($lang == 'fr')
       <link rel="stylesheet" href="/assets/css/style.css">
    @else
       <link rel="stylesheet" href="/assets/css/color.css">
    @endif
	</head>
	<body>
  

    <div class="load">
	<div class="loading"></div>
		
	</div>

    <nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar probootstrap_scrolled-light" id="probootstrap-navbar">
    
      <div class="container">
        <a class="navbar-brand" href="/"><img src="/uploads/{{ $settings->logo }}" width="100px"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu" aria-expanded="false" aria-label="Toggle navigation">
          <span><i class="ion-navicon"></i></span>
        </button>
        <div class="collapse navbar-collapse" id="probootstrap-menu">
          <ul class="navbar-nav ml-auto">
            @if($lang === 'fr')
            <li class="nav-item"><a class="nav-link" href="/?lang={{ $lang }}">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="/about_us?lang={{ $lang }}">sur</a></li>
            <li class="nav-item"><a class="nav-link" href="/products?lang={{ $lang }}">des produits</a></li>
            <li class="nav-item"><a class="nav-link" href="/faqs?lang={{ $lang }}">FAQ</a></li>
            <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
            <li class="nav-item"><a class="nav-link" href="?lang=ar"><img src="/assets/images/egypt.png">  Arabic</a></li>
            @else
            <li class="nav-item"><a class="nav-link" href="/?lang={{ $lang }}">الصفحة الرئيسية</a></li>
            <li class="nav-item"><a class="nav-link" href="/about_us?lang={{ $lang }}">من نحن</a></li>
            <li class="nav-item"><a class="nav-link" href="/products?lang={{ $lang }}">المنتجات</a></li>
            <li class="nav-item"><a class="nav-link" href="/faqs?lang={{ $lang }}">الأسئلة  الشائعة</a></li>
            <li class="nav-item"><a class="nav-link" href="/contact?lang={{ $lang }}">اتصل بنا</a></li>
            <li class="nav-item"><a class="nav-link" href="?lang=fr"><img src="/assets/images/france.png">  French</a></li>
            @endif
          </ul>
        </div>
      </div>
      
    </nav>
    
<!-- Floating Social Media bar Starts -->
<div class="float-sm">
  <div class="fl-fl float-fb">
    <i class="fa fa-facebook"></i>
    <a href="{{ $settings->fb_link }}" target="_blank"> Like us!</a>
  </div>
  <div class="fl-fl float-tw">
    <i class="fa fa-youtube"></i>
    <a href="{{ $settings->youtube_link }}" target="_blank">Follow us!</a>
  </div>
  <div class="fl-fl float-gp">
    <i class="fa fa-phone"></i>
    <a href="tel://{{ $settings->phone }}" target="_blank">call us!</a>
  </div>
</div>
<!-- Floating Social Media bar Ends -->
    <!-- END nav -->
