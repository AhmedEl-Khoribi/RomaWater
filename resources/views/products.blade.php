 @extends('master')

@section('content_front')

@php
  $lang = (isset($_GET['lang'])) ? $_GET['lang'] : 'ar' ;
  $settings = \App\SiteInfo::find(1);
@endphp 

@if($lang == 'fr')
 <section class="probootstrap_cover_v3 overflow-hidden relative text-center" style="background-image: url('assets/images/banner2.jpg');" id="section-home">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md">
            <h2 class="heading mb-2 probootstrap-animate">Des Produits</h2>
            <p class="lead mb-5  probootstrap-animate">{{ $settings->site_name }}</p>
          </div> 
        </div>
      </div>
      <div class="scroll-wrap js-scroll-wrap probootstrap-animate">
        <a href="#section-feature" class="text-white probootstrap_font-24 smoothscroll"><i class="ion-chevron-down"></i></a>
      </div>
    </section>
    <section class="probootstrap_section bg-light" id="section-feature" style="background-color: white !important">
      <div class="container">
      	        <div class="row">
        @foreach($products as $pro)
          <div class="col-md-3 col-sm-6 probootstrap-animate">
            <div class="media d-block probootstrap_feature-v1 text-center">
              <div class="probootstrap_icon"><img  src="/uploads/{{ $pro->image }}" style="width:100%"></div>
              <div class="media-body">
                <h5 class="mt-0 mb-3 heading">{{ $pro->name_fr }}</h5>
                <p class="probootstrap_font-14 text-sans-serif">Price:{{ $pro->price }} L.E</p>
                <p class="text-sans-serif probootstrap_font-14 mb-0"><a href="/product/{{ $pro->id }}?lang={{ $lang }}">Buy Now </a></p>
              </div>
            </div>
          </div>
          @endforeach
        </div>
      </div>
    </section>

@else
 <section class="probootstrap_cover_v3 overflow-hidden relative text-center" style="background-image: url('assets/images/banner2.jpg');" id="section-home">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md">
            <h2 class="heading mb-2 probootstrap-animate">المنتجات</h2>
            <p class="lead mb-5  probootstrap-animate">{{ $settings->site_name }}</p>
          </div> 
        </div>
      </div>
      <div class="scroll-wrap js-scroll-wrap probootstrap-animate">
        <a href="#section-feature" class="text-white probootstrap_font-24 smoothscroll"><i class="ion-chevron-down"></i></a>
      </div>
    </section>
    <section class="probootstrap_section bg-light" id="section-feature" style="background-color: white !important">
      <div class="container">
      	<div class="row">
        @foreach($products as $pro)
          <div class="col-md-3 col-sm-6 probootstrap-animate">
            <div class="media d-block probootstrap_feature-v1 text-center">
              <div class="probootstrap_icon"><img  src="/uploads/{{ $pro->image }}" style="width:100%"></div>
              <div class="media-body">
                <h5 class="mt-0 mb-3 heading">{{ $pro->name }}</h5>
                <p class="probootstrap_font-14 text-sans-serif">Price:{{ $pro->price }} L.E</p>
                <p class="text-sans-serif probootstrap_font-14 mb-0"><a href="/product/{{ $pro->id }}?lang={{ $lang }}">Buy Now </a></p>
              </div>
            </div>
          </div>
          @endforeach
        </div>
        {!! $products->render() !!}
      </div>
    </section>


 @endif  
@endsection