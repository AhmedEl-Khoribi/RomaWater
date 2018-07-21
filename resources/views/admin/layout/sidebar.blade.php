  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>{{ Auth::guard('admin')->user()->name }}</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="/admin/home"><i class="fa fa-circle-o"></i>Dashboard</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-files-o"></i>
            <span>Categories</span>
            <span class="pull-right-container">
              <span class="label label-primary pull-right">{{ \App\Category::count() }}</span>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/admin/categories"><i class="fa fa-circle-o"></i> All Categories</a></li>
            <li><a href="/admin/add_category"><i class="fa fa-circle-o"></i> Add Categories</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-files-o"></i>
            <span>Products</span>
            <span class="pull-right-container">
              <span class="label label-primary pull-right">{{ \App\Product::count() }}</span>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/admin/products"><i class="fa fa-circle-o"></i> All Products</a></li>
            <li><a href="/admin/add_product"><i class="fa fa-circle-o"></i> Add Product</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-laptop"></i>
            <span>Site Information</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/admin/site_info"><i class="fa fa-circle-o"></i> View Information</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-share"></i> <span>Other Sections In Site</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/admin/about-us"><i class="fa fa-circle-o"></i> About Us</a></li>
            <li class="treeview">
              <a href="#"><i class="fa fa-circle-o"></i> FAQ
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li><a href="/admin/faqs"><i class="fa fa-circle-o"></i> Show FAQ</a></li>
                <li><a href="/admin/createFaqs"><i class="fa fa-circle-o"></i> Add FAQs</a></li>
              </ul>
            </li>
            <li><a href="/admin/contact_us"><i class="fa fa-circle-o"></i> Contact Us</a></li>
          </ul>
        </li>
        <li>
          <a href="/admin/mailbox">
            <i class="fa fa-envelope"></i> <span>Orders</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-yellow"></small>
              <small class="label pull-right bg-green"></small>
              <small class="label pull-right bg-red">{{ \App\Mail::where('is_done', 'no')->count() }}</small>
            </span>
          </a>
        </li>
        <li>
          <a href="/admin/contact">
            <i class='fa fa-address-card'></i> <span>From Contact us</span>
          </a>
        </li>
        <li class="header">LABELS</li>
        <li><a href="/password/reset"><i class="fa fa-circle-o text-red"></i> <span>Change Admin Password</span></a></li>
        <li><a href="/"><i class="fa fa-circle-o text-yellow"></i> <span>View Site</span></a></li>
        <li><a href="/admin/register"><i class="fa fa-circle-o text-aqua"></i> <span>Add An Admin</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <div class="content-wrapper">

