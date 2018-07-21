@extends('admin.master')
@section('content')
@if($flash = session('message'))
<div class="alert success">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
    <b>{{ $flash }}</b>
</div>
@endif
@if($flash = session('deleted'))
<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
    <b>{{ $flash }}</b>
</div>
@endif

<div class="box">
            <div class="box-header">
  <h3 class="box-title">Data Table For Site Information</h3>
</div>
    <div class="box-body">
      <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
          <th>ID</th>
          <th>Site Name</th>
          <th>Logo</th>
          <th>Favicon</th>
          <th>Address</th>
          <th>Footer</th>
          <th>Footer French</th>
          <th>Phone</th>
          <th>Email</th>
          <th>Social Accounts</th>
          <th>Edit / Delete</th>
        </tr>
        </thead>
        <tbody>
@foreach($infos as $info)
        <tr>
          <td>{{ $info->id }}</td>
          <td>{{ $info->site_name }}</td>
          <td><img src="/uploads/{{ $info->logo }}" width="70"></td>
          <td><img src="/uploads/{{ $info->favicon }}" width="90"></td>
          <td>{{ $info->address }}</td>
          <td>{{ $info->footer }}</td>
          <td>{{ $info->footer_fr }}</td>
          <td>{{ $info->phone }}</td>
          <td>{{ $info->email }}</td>
          <td>
              <a href="{{ $info->fb_link }}" class="btn btn-social-icon btn-facebook"><i class="fa fa-facebook"></i></a>
              <br>
              <a href="{{ $info->youtube_link }}" class="btn btn-social-icon btn-twitter"><i class="fa fa-youtube"></i></a>
          </td>
          <td>
            <a href="/admin/edit_info/{{ $info->id }}" class="btn btn-app">
                 <i class="fa fa-edit"></i> Edit
            </a>
          </td>
        </tr>
@endforeach
        </tbody>
      </table>
    </div>
  </div>

@endsection