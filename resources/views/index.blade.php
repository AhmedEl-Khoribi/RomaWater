@extends('master')

@section('content_front')

@php
  $lang = (isset($_GET['lang'])) ? $_GET['lang'] : 'ar' ;
  $settings = \App\SiteInfo::find(1);
 $aa = chunk_split($aboutus->desc, 10, "...");
@endphp	
    <section class="probootstrap_cover_v3 overflow-hidden relative text-center" id="section-home">
      
      <div class="overlay"></div>
   
      <div class="container">

        <div class="row align-items-center justify-content-center">
          <div class="col-md">
            <h2 class="heading mb-2 probootstrap-animate">{{ $settings->site_name }}</h2>
            @if($lang == 'fr')
            <p class="lead mb-5 probootstrap-animate">  Filtter eau avec de haute qualité  
 </p>
            @else 
            <p class="lead mb-5 probootstrap-animate"> فلتر مياه عالي الجودة</p>
            @endif
          </div> 
        </div>
      </div>
      
        <div class="scroll-wrap js-scroll-wrap probootstrap-animate">
        <a href="#section-feature" class="text-white probootstrap_font-24 smoothscroll"><i class="ion-chevron-down"></i></a>
      </div>
    </section>
    <!-- END section -->
    


    <section class="probootstrap_section" id="section-feature">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-6 text-center mb-5 probootstrap-animate">
            @if($lang == 'fr')
            <h2>Catégorie</h2>
            @else
            <h2>الأقسام</h2>
            @endif
          </div>
        </div>
        <br>
        <br>
        
@if($lang == 'fr')
<div class="filter">
	<a class="all current" href="#">All</a>
	@foreach($categories as $category)
	<a class="{{ $category->class }}" href="/category_products/{{ $category->id}}?lang={{ $lang }}" target="_blank">{{ $category->name_fr }}</a>
	@endforeach
</div>
@else
<div class="filter">
	<a class="all current" href="#">الكل</a>
	@foreach($categories as $category)
	<a class="{{ $category->class }}" href="/category_products/{{ $category->id}}?lang={{ $lang }}" target="_blank">{{ $category->name }}</a>
	@endforeach
</div>
@endif	


<div class="boxGroup">
@foreach($products as $product)
  <div class="box {{ $product->category->class }}"><a href="/product/{{ $product->id }}?lang={{ $lang }}"><img src="/uploads/{{ $product->image }}" style="width: 100%;"></a></div>
@endforeach
</div>
    
      </div>
    </section>
@if($lang == 'fr')
    <section class="probootstrap-section-half d-md-flex" id="section-about">
      <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(/uploads/{{ $aboutus->img }})"></div>
      <div class="probootstrap-text">
        <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
          <h2 class="heading mb-4">À propos de l'entreprise</h2>
          <p><?= substr($aboutus->desc_fr,0, 185). "...";  ?></p>
          <p><a href="/about_us?lang={{ $lang }}" class="btn btn-primary">Read More</a></p>
        </div>
      </div>
    </section>    
@else
    <section class="probootstrap-section-half d-md-flex" id="section-about">
      <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(/uploads/{{ $aboutus->img }})"></div>
      <div class="probootstrap-text">
        <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
          <h2 class="heading mb-4">من نحن</h2>
          <p><?= substr($aboutus->desc,0, 200) . "...";  ?></p>
          <p><a href="/about_us?lang={{ $lang }}" class="btn btn-primary">Read More</a></p>
        </div>
      </div>
    </section>    
@endif

@if($lang == 'fr')
    <section class="probootstrap_section" id="section-products">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-6 text-center mb-5 probootstrap-animate">
            <h2>  Produits populaires</h2>

          </div>
        </div>
        <div class="row mb-5">
        	@foreach($sort_p as $product)
          <div class="col-md-3 col-sm-6 probootstrap-animate">
            <div class="media d-block text-center">
              <img class="mr-0 mb-3 w-50 img-fluid rounded-circle" src="/uploads/{{ $product->image }}" alt="Generic placeholder image">
              <div class="media-body">
                <h5 class="mt-3"> {{ $product->name_fr }}</h5>
                <p class="probootstrap_font-14">{{ $product->price }}</p>
                <p><a href="/product/{{ $product->id }}?lang={{ $lang }}">Buy Now</a></p>
              </div>
            </div>
          </div>
          @endforeach
       </div>
      </div>
    </section>
 @else
     <section class="probootstrap_section" id="section-products">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-6 text-center mb-5 probootstrap-animate">
            <h2>  المنتجات الاكثر مبيعا</h2>

          </div>
        </div>
        <div class="row mb-5">
        	@foreach($sort_p as $product)
          <div class="col-md-3 col-sm-6 probootstrap-animate">
            <div class="media d-block text-center">
              <a href="/product/{{ $product->id }}?lang={{ $lang }}">
              <img class="mr-0 mb-3 w-50 img-fluid rounded-circle" src="/uploads/{{ $product->image }}" alt="Generic placeholder image"></a>
              <div class="media-body">
                <h5 class="mt-3"> {{ $product->name }}</h5>
                <p class="probootstrap_font-14">{{ $product->price }}</p>
                <p><a href="/product/{{ $product->id }}?lang={{ $lang }}">Buy Now</a></p>
              </div>
            </div>
          </div>
          @endforeach
       </div>
      </div>
    </section>
 @endif   
    <!-- END section -->
    

    <section class="probootstrap_section backgrounda">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-8 text-center mb-5 probootstrap-animate">
            <h1 style="color: white">Comments</h1>
            <p class="probootstrap_font-18" style="color: white">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
          </div>
        </div>
        <div class="row" style="color: white">
          <div class="col-md probootstrap-animate">
            <div class="media1 d-block text-center testimonial_v1 probootstrap_quote_v1">
              <div class="media-body">
                <div class="quote">&ldquo;</div>
                <blockquote class="mb-5">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</blockquote>
                <img class="d-flex text-center mx-auto mb-3 rounded-circle" src="assets/images/person_1.jpg" alt="Generic placeholder image">
                <h3 class="heading">Garry Alexander</h3>
                <p class="subheading">@garry</p>
              </div>
            </div>
          </div>
          <div class="col-md probootstrap-animate">
            <div class="media1 d-block text-center testimonial_v1 probootstrap_quote_v1">
              <div class="media-body">
                <div class="quote">&ldquo;</div>
                <blockquote class="mb-5">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</blockquote>
                <img class="d-flex text-center mx-auto mb-3 rounded-circle" src="assets/images/person_5.jpg" alt="Generic placeholder image">
                <h3 class="heading">Deborah Smith</h3>
                <p class="subheading">@deborah</p>
                
              </div>
            </div>
          </div>
          <div class="col-md probootstrap-animate">
            <div class="media1 d-block text-center testimonial_v1 probootstrap_quote_v1">
              
              <div class="media-body">
                <div class="quote">&ldquo;</div>
                <blockquote class="mb-5">Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</blockquote>
                <img class="d-flex text-center mx-auto mb-3 rounded-circle" src="assets/images/person_2.jpg" alt="Generic placeholder image">
                <h3 class="heading">James Robertson</h3>
                <p class="subheading">@james</p>
                
              </div>
            </div>
          </div>
        </div>
      </div>
</section>
@endsection
