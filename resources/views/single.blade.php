 @extends('master')

@section('content_front')

@php
  $lang = (isset($_GET['lang'])) ? $_GET['lang'] : 'ar' ;
  $settings = \App\SiteInfo::find(1);
@endphp 
@if($flash = session('message'))
<script type="text/javascript">
  alert('{{ $flash }}');
</script>
@endif
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
    </section>
    <!-- END section -->
     
 <section class="probootstrap_section bg-light single" >
 <div class="container">
        <div class="row">

          <div class="col-md-12 probootstrap-animate">
          
  <section class="buy">
    <div class="product-image">
      <img src="/uploads/{{$product->image}}" style="width: 100%">
    </div>
    <div class="product-info">
      <h2>{{ $product->name_fr }}</h2>
      <br>
      <h2>{{ $product->price }} L.E</h2>
    </div>
  </section>
  <section class="details">
    <div class="product-details">
      <?= $product->desc_fr ?>
    </div>
  </section>
			<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
				<iframe width="100%" height="315" src="{{ $product->video_link }}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			</div>

			</div>
	 </div>
	 </div>
	 <br>
	 <br>
	  <div class="container">
        <div class="row">

          <div class="col-md-12 probootstrap-animate">
            <form action="/buy/{{ $product->id }}" method="post" class="probootstrap-form probootstrap-form-box mb60">
            
                               {{ csrf_field() }}

               <div class="form-group">
                    <label for="fname"> Name</label>
                    <input type="text" class="form-control" id="fname" name="name">
              </div>
              <div class="form-group">
                    <label for="lname">Phone</label>
                    <input type="tel" class="form-control" id="phone" name="phone">
              </div>
              <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email">
              </div>
               <div class="form-group">
                <label for="email">City</label>
 				<input type="text" class="form-control" id="email" name="city">
              </div>
               <div class="form-group">
                <label for="email">Address</label>
                <input type="text" class="form-control" id="add" name="address">
              </div>
               <div class="form-group">
                <label for="email">Quantity</label>
                <select class="form-control" name="quantity">
                	<option disabeld selected></option>
                	<option value="1">1</option>
                	<option value="2">2</option>
                	<option value="3">3</option>
                	<option value="4">4</option>
                	<option value="5">5</option>
                	<option value="6">6</option>
                	<option value="7">7</option>
                	<option value="8">8</option>
                	<option value="9">9</option>
                	<option value="10">10</option>
                	<option value="11">11</option>
                	<option value="12">12</option>
                </select>
              </div>
              <input type="hidden" name="lang" value="{{ $lang }}">
              <div class="form-group">
              	<p> Cash on delivery</p>
              </div>
              <div class="form-group">
              	<p> Total:{{ $product->price }} L.E</p>
              </div>
              <div class="form-group">
                <input type="submit" class="btn btn-primary" id="submit" value="Buy Now">
              </div>
@if(count($errors))
    @foreach($errors->all() as $error)
<script type="text/javascript">
    alert('{{ $error }}');
</script>
    @endforeach
@endif
@if(count($errors))
<div class="alert alert-danger" style="margin: 45px auto">
  <ul>
    @foreach($errors->all() as $error)
    <li><b>{{ $error }}</b></li>
    @endforeach
  </ul>
</div>
@endif
            </form>
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
            <h2 class="heading mb-2 probootstrap-animate">المنتج</h2>
            <p class="lead mb-5  probootstrap-animate">{{ $settings->site_name }}</p>
          </div> 
        </div>
      </div>
    </section>
    <!-- END section -->
     
 <section class="probootstrap_section bg-light single" >
 <div class="container">
        <div class="row">

          <div class="col-md-12 probootstrap-animate">
          
  <section class="buy">
    <div class="product-image">
      <img src="/uploads/{{$product->image}}" style="width: 100%">
    </div>
    <div class="product-info">
      <h2>{{ $product->name }}</h2>
      <br>
      <h2>{{ $product->price }} L.E</h2>
    </div>
  </section>
  <section class="details">
    <div class="product-details">
      
      <?= $product->desc ?>
    </div>
  </section>
			<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
				<iframe width="100%" height="315" src="{{ $product->video_link }}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			</div>

			</div>
	 </div>
	 </div>
	 <br>
	 <br>
	  <div class="container">
        <div class="row">

          <div class="col-md-12 probootstrap-animate">
            <form action="/buy/{{ $product->id }}" method="post" class="probootstrap-form probootstrap-form-box mb60">
            
                               {{ csrf_field() }}

               <div class="form-group">
                    <label for="fname"> الأسم</label>
                    <input type="text" class="form-control" id="fname" name="name">
              </div>
              <div class="form-group">
                    <label for="lname">الهاتف</label>
                    <input type="tel" class="form-control" id="phone" name="phone">
              </div>
              <div class="form-group">
                <label for="email">الايميل</label>
                <input type="email" class="form-control" id="email" name="email">
              </div>
               <div class="form-group">
                <label for="email">المدينة</label>
 				<input type="text" class="form-control" id="email" name="city">
              </div>
               <div class="form-group">
                <label for="email">العنوان</label>
                <input type="text" class="form-control" id="add" name="address">
              </div>
               <div class="form-group">
                <label for="email">الكمية</label>
                <select class="form-control" name="quantity">
                	<option disabeld selected></option>
                	<option value="1">1</option>
                	<option value="2">2</option>
                	<option value="3">3</option>
                	<option value="4">4</option>
                	<option value="5">5</option>
                	<option value="6">6</option>
                	<option value="7">7</option>
                	<option value="8">8</option>
                	<option value="9">9</option>
                	<option value="10">10</option>
                	<option value="11">11</option>
                	<option value="12">12</option>
                </select>
              </div>
              <input type="hidden" name="lang" value="{{ $lang }}">
              <div class="form-group">
              	<p> الدفع عند الاستلام</p>
              </div>
              <div class="form-group">
              	<p> Total:{{ $product->price }} L.E</p>
              </div>
              <div class="form-group">
                <input type="submit" class="btn btn-primary" id="submit" value="اشتري الان">
              </div>
@if(count($errors))
    @foreach($errors->all() as $error)
<script type="text/javascript">
    alert('{{ $error }}');
</script>
    @endforeach
@endif
@if(count($errors))
<div class="alert alert-danger" style="margin: 45px auto">
  <ul>
    @foreach($errors->all() as $error)
    <li><b>{{ $error }}</b></li>
    @endforeach
  </ul>
</div>
@endif
            </form>
          </div>
          </div>
          </div>
		</section>

@endif  
@endsection