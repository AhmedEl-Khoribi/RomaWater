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
            <h2 class="heading mb-2 probootstrap-animate">FAQ</h2>
            <p class="lead mb-5  probootstrap-animate">{{ $settings->site_name }}</p>
        
          </div> 
        </div>
      </div>
      <div class="scroll-wrap js-scroll-wrap probootstrap-animate">
        <a href="#section-feature" class="text-white probootstrap_font-24 smoothscroll"><i class="ion-chevron-down"></i></a>
      </div>
    </section>
    <!-- END section -->
    
 <section class="probootstrap_section bg-light" id="section-feature">
 <div class="container">
        <div class="row">

          <div class="col-md-12 probootstrap-animate">
          
          

<div class="content">
      @foreach($faqs as $faq)
      <div>
        <input type="checkbox" id="question1" name="q"  class="questions">
        <div class="plus">+</div>
        <label for="question1" class="question">
          {{ $faq->question_fr }}
        </label>
        <div class="answers">
         <?= $faq->answer_fr ?>
        </div>
      </div>
      @endforeach
</div>
			</div>
	 </div>
	 </div>
		</section>
 @else  
 <section class="probootstrap_cover_v3 overflow-hidden relative text-center" style="background-image: url('assets/images/banner2.jpg');" id="section-home">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md">
            <h2 class="heading mb-2 probootstrap-animate">الاسئلة الشائعة</h2>
            <p class="lead mb-5  probootstrap-animate">{{ $settings->site_name }}</p>
        
          </div> 
        </div>
      </div>
      <div class="scroll-wrap js-scroll-wrap probootstrap-animate">
        <a href="#section-feature" class="text-white probootstrap_font-24 smoothscroll"><i class="ion-chevron-down"></i></a>
      </div>
    </section>
    <!-- END section -->
    
 <section class="probootstrap_section bg-light" id="section-feature">
 <div class="container">
        <div class="row">

          <div class="col-md-12 probootstrap-animate">
          
          

<div class="content">
      @foreach($faqs as $faq)
      <div>
        <input type="checkbox" id="question1" name="q"  class="questions">
        <div class="plus">+</div>
        <label for="question1" class="question">
          {{ $faq->question }}
        </label>
        <div class="answers">
         <?= $faq->answer ?>
        </div>
      </div>
      @endforeach
</div>
      </div>
   </div>
   </div>
    </section>
 @endif  
@endsection