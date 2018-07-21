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
            <h2 class="heading mb-2 probootstrap-animate">À propos de l'entreprise</h2>
            <p class="lead mb-5  probootstrap-animate">{{ $settings->site_name }}</p> 
          </div> 
        </div>
      </div>
      <div class="scroll-wrap js-scroll-wrap probootstrap-animate">
        <a href="#section-feature" class="text-white probootstrap_font-24 smoothscroll"><i class="ion-chevron-down"></i></a>
      </div>
    </section>    

    <section class="probootstrap-section-half d-md-flex" id="section-about">
      <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(/uploads/{{ $aboutus->img }})"></div>
      <div class="probootstrap-text">
        <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
          <h2 class="heading mb-4">À propos de l'entreprise</h2>
          <p><?= $aboutus->desc_fr ?></p>
        </div>
      </div>
    </section>


    <section class="probootstrap_section" id="section-feature">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-6 text-center mb-5 probootstrap-animate">
            <h2>The Features</h2>
          </div>
        </div>
        <div class="row">
          @foreach($categories as $cat)
          <div class="col-md-3 col-sm-6 probootstrap-animate">
            <div class="media d-block text-center probootstrap-media">
              <img class="mr-0 mb-3 w-50 img-fluid rounded-circle" src="/assets/images/filter.png" alt="Generic placeholder image">
              <div class="media-body">
                <h5 class="mt-3">{{ $cat->name_fr}} </h5>
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
            <h2 class="heading mb-2 probootstrap-animate">من نحن؟</h2>
            <p class="lead mb-5  probootstrap-animate">{{ $settings->site_name }}</p> 
          </div> 
        </div>
      </div>
      <div class="scroll-wrap js-scroll-wrap probootstrap-animate">
        <a href="#section-feature" class="text-white probootstrap_font-24 smoothscroll"><i class="ion-chevron-down"></i></a>
      </div>
    </section>    

    <section class="probootstrap-section-half d-md-flex" id="section-about">
      <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(/uploads/{{ $aboutus->img }})"></div>
      <div class="probootstrap-text">
        <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
          <h2 class="heading mb-4">من نحن؟</h2>
          <p><?= $aboutus->desc ?></p>
        </div>
      </div>
    </section>


    <section class="probootstrap_section" id="section-feature">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-6 text-center mb-5 probootstrap-animate">
            <h2>المميزات</h2>
          </div>
        </div>
        <div class="row">
          @foreach($categories as $cat)
          <div class="col-md-3 col-sm-6 probootstrap-animate">
            <div class="media d-block text-center probootstrap-media">
              <img class="mr-0 mb-3 w-50 img-fluid rounded-circle" src="/assets/images/filter.png" alt="Generic placeholder image">
              <div class="media-body">
                <h5 class="mt-3">{{ $cat->name }} </h5>
              </div>
            </div>
          </div>
          @endforeach
        </div>
      </div>
    </section>
    <!-- END section -->
  @endif  
@endsection