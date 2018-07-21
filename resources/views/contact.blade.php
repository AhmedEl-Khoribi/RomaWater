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
    <section class="probootstrap_cover_v3 overflow-hidden relative text-center" style="background-image: url('assets/images/banner.jpg');" id="section-home">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md">
            <h2 class="heading mb-2 probootstrap-animate">Contact Us</h2>
            <p class="lead mb-5  probootstrap-animate">{{ $settings->site_name }}</p>
            
          </div> 
        </div>
      </div>
      <div class="scroll-wrap js-scroll-wrap probootstrap-animate">
        <a href="#section-contact" class="text-white probootstrap_font-24 smoothscroll"><i class="ion-chevron-down"></i></a>
      </div>
    </section>
    <section class="probootstrap_section bg-light contact" id="section-contact">
      <div class="container">
        <div class="row">
          <div class="col-md-7 probootstrap-animate">
            <form action="/contact" method="post" class="probootstrap-form probootstrap-form-box mb60">
                  {{ csrf_field() }}
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="fname">First Name</label>
                    <input type="text" class="form-control" id="fname" name="fname">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="lname">Last Name</label>
                    <input type="text" class="form-control" id="lname" name="lname">
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label for="phone">Phone</label>
                <input type="text" class="form-control" id="phone" name="phone">
              </div>
              <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email">
              </div>
                            <input type="hidden" name="lang" value="{{ $lang }}">
              <div class="form-group">
                <label for="message">Message</label>
                <textarea cols="30" rows="10" class="form-control" id="message" name="message"></textarea>
              </div>
              <div class="form-group">
                <input type="submit" class="btn btn-primary" id="submit" value="Send Message">
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
          <div class="col-md-1"></div>
          <div class="col-md-3 probootstrap-animate">
            <ul class="probootstrap-contact-details">
              <li>
                <span class="text-uppercase">Email</span>
                {{ $contact->email }}
              </li>
              <li>
                <span class="text-uppercase">Phone</span>
                {{ $contact->phone }}
              </li>
              <li>
                <span class="text-uppercase">Fax</span>
                {{ $contact->fax }}
              </li>
              <li>
                <span class="text-uppercase">Address</span>
                {{ $contact->address }}
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>
@else
 <section class="probootstrap_cover_v3 overflow-hidden relative text-center" style="background-image: url('assets/images/banner.jpg');" id="section-home">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md">
            <h2 class="heading mb-2 probootstrap-animate">اتصل بنا</h2>
            <p class="lead mb-5  probootstrap-animate">{{ $settings->site_name }}</p>
            
          </div> 
        </div>
      </div>
      <div class="scroll-wrap js-scroll-wrap probootstrap-animate">
        <a href="#section-contact" class="text-white probootstrap_font-24 smoothscroll"><i class="ion-chevron-down"></i></a>
      </div>
    </section>
    <section class="probootstrap_section bg-light contact" id="section-contact">
      <div class="container">
        <div class="row">
          <div class="col-md-7 probootstrap-animate">
            <form action="/contact" method="post" class="probootstrap-form probootstrap-form-box mb60">
                                {{ csrf_field() }}
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="fname">الاسم الاول</label>
                    <input type="text" class="form-control" id="fname" name="fname">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="lname">الاسم الاخير</label>
                    <input type="text" class="form-control" id="lname" name="lname">
                  </div>
                </div>
              </div>
               <div class="form-group">
                <label for="phone">رقم الهاتف</label>
                <input type="text" class="form-control" id="phone" name="phone">
              </div>
              <div class="form-group">
                <label for="email">الايميل</label>
                <input type="email" class="form-control" id="email" name="email">
              </div>
                            <input type="hidden" name="lang" value="{{ $lang }}">
              <div class="form-group">
                <label for="message">الرسالة</label>
                <textarea cols="30" rows="10" class="form-control" id="message" name="message"></textarea>
              </div>
              <div class="form-group">
                <input type="submit" class="btn btn-primary" id="submit" value="ارسل رسالة">
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
          <div class="col-md-1"></div>
          <div class="col-md-3 probootstrap-animate">
            <ul class="probootstrap-contact-details">
              <li>
                <span class="text-uppercase">الايميل</span>
                {{ $contact->email }}
              </li>
              <li>
                <span class="text-uppercase">التيليفون</span>
                {{ $contact->phone }}
              </li>
              <li>
                <span class="text-uppercase">الفاكس</span>
                {{ $contact->fax }}
              </li>
              <li>
                <span class="text-uppercase">العنوان</span>
                {{ $contact->address }}
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>
@endif  
@endsection