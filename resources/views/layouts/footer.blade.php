      <footer class="footer-distributed">
@php
  $lang = (isset($_GET['lang'])) ? $_GET['lang'] : 'ar' ;
  $settings = \App\SiteInfo::find(1);
@endphp	  
			<div class="footer-left col-lg-3 col-md-3">
				<h3> <span>{{ $settings->site_name }}</span></h3>
<!-- 				@if($lang == 'fr')
				<p class="footer-links">
					·
					<a href="products.html">Filter</a>
					·
					<a href="products.html">Candel</a>
					
				</p>
				@else
				<p class="footer-links">
					·
					<a href="products.html">فلاتر</a>
					·
					<a href="products.html">شمعات</a>
					
				</p>
				@endif
 -->				<p class="footer-company-name">Roma Water &copy; {{ date('Y') }}</p>
			</div>

			<div class="footer-center col-lg-3 col-md-3">

				<div>
					<i class="fa fa-map-marker"></i>
					<p>{{ $settings->address }}</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>{{ $settings->phone }}</p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="mailto:support@company.com">{{ $settings->email }}</a></p>
				</div>

			</div>

			<div class="footer-right col-lg-3 col-md-3">
				@if($lang == 'fr')
				<p class="footer-company-about">
					<span>À propos de l'entreprise</span>
					{{ $settings->footer_fr }}
				</p>
				@else
				<p class="footer-company-about">
					<span>عن الشركة</span>
					{{ $settings->footer }}
				</p>
				@endif
				

			</div>
			
			
			<div class=" footer-right col-lg-3 col-md-3 ">
				
			<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d13806.926313244061!2d31.366020490928815!3d30.101872909781974!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2seg!4v1530103320666"  frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
			<br>
			<br>
			<div class="copy col-lg-12 col-md-12 col-xs-12 col-sm-12" >
				<p style="text-align: center; color: white">Copyright &copy; by <a href="http://gtsaw.com" target="_blank">GTSAW<i class="fa fa-heart " style="color: white;margin-left: 0px"></i> </a></p>
			</div>

		</footer>
	
              
    <script src="/assets/js/jquery.min.js"></script>
    
    <script src="/assets/js/popper.min.js"></script>
    <script src="/assets/js/bootstrap.min.js"></script>
    <script src="/assets/js/slick.min.js"></script>
    <script src="/assets/js/jquery.mb.YTPlayer.min.js"></script>

    <script src="/assets/js/jquery.waypoints.min.js"></script>
    <script src="/assets/js/jquery.easing.1.3.js"></script>

    <script src="/assets/js/main.js"></script>   
    <script>
		 $(document).ready(function() {
		
      $(".load").fadeOut(3000);
 
});

		
		</script>
    
    <script>
		
		
  
  $(function() {
    
    var $filter = $('.filter');
    var $tab = $('.filter a');
    var $offers = $('.boxGroup .box')
    
    
    
    $filter.on('click touch', '.all',  function(e) {
      e.preventDefault();
      $tab.removeClass('current');
      $(this).addClass('current');
      
      $offers.hide();
      $offers.fadeIn( 700 );
      
    });
    
    
    $filter.on('click touch', '.one',  function(e) {
      e.preventDefault();
      $tab.removeClass('current');
      $(this).addClass('current');
      
      $offers.show();
      $offers.fadeOut( 400 );
      $offers.filter('.one').fadeIn( 400 );
    
    });
    
    
    
    $filter.on('click touch', '.two',  function(e) {
      e.preventDefault();
      $tab.removeClass('current');
      $(this).addClass('current');
      
      $offers.show();
      $offers.fadeOut( 400 );
      $offers.filter('.two').fadeIn( 400 );
     
    });
    
    
    
    $filter.on('click touch', '.three',  function(e) {
      e.preventDefault();
      $tab.removeClass('current');
      $(this).addClass('current');
      
      $offers.show();
      $offers.fadeOut( 400 );
      $offers.filter('.three').fadeIn( 400 );
     
    });
    
    
  });
  

		</script>
	</body>
</html>