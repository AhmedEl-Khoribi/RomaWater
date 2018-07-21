@extends('admin.master')
@section('content')

<form method="POST" action="/admin/updateSiteInfo/{{ $info->id }}"  enctype="multipart/form-data">
	{{ csrf_field() }}
  <input type="hidden" name="_method" value="PATCH">
<div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Edit Site Information</h3>
            </div>
	<div class="form-group has-success">
	  <label class="control-label" for="inputSuccess"><i class="fa fa-check"></i> Site Name</label>
	  <input type="text" class="form-control" name="site_name" id="inputSuccess" value="{{ $info->site_name }}">
	  <span class="help-block">Must Choose Special &amp; Unique Site Name</span>
	</div>
	<div class="form-group has-error">
    <label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> Company Address</label>
    <input name="address" type="text" class="form-control" id="inputError" value="{{ $info->address }}">
  </div>
  <hr>
  <div class="row">
      <div class="col-xs-4">  
        <h5>Old Site Logo</h5>
      <img src="/uploads/{{ $info->logo }}" width="215">
      </div>
      <div class="col-xs-8">  
        <label>Upload new site logo</label>
        <input type="file" name="logo" class="form-control">
      </div>
  </div>
  <hr>
  <div class="row">
      <div class="col-xs-4">  
        <h5>Old Site Fivicon</h5>
      <img src="/uploads/{{ $info->favicon }}" width="215">
      </div>
      <div class="col-xs-8">  
        <label>Upload new site Fivicon</label>
        <input type="file" name="favicon" class="form-control">
      </div>
  </div>
  <hr>
  <div class="form_group">
    <label>Footer</label>
    <input name="footer" class="form-control input-lg" type="text" value="{{ $info->footer }}">
  </div>
    <div class="form_group">
    <label>Footer French</label>
    <input name="footer_fr" class="form-control input-lg" type="text" value="{{ $info->footer_fr }}">
  </div>
  <br>
  <div class="row">
      <div class="col-xs-6">  
        <label>Phone</label>
        <input name="phone" type="text" class="form-control" value="{{ $info->phone }}">
      </div>
      <div class="col-xs-6">  
        <label>Email</label>
        <input name="email" type="text" class="form-control" value="{{ $info->email }}">
      </div>
  </div>
  <div class="row">
      <div class="col-xs-6">  
        <label>Facebook Acc.</label>
        <input name="fb_link" type="text" class="form-control" value="{{ $info->fb_link }}">
      </div>
      <div class="col-xs-6">  
        <label>Youtube Acc.</label>
          <input name="youtube_link" type="text" class="form-control" value="{{ $info->youtube_link }}">
      </div>
  </div>
<div class="box-footer">
<button type="submit" class="btn btn-success btn-block btn-flat">Edit Site's Info</button>
</div>
</form>
@if(count($errors))
<div class="alert alert-danger">
<ul>
    @foreach($errors->all() as $error)
        <li>{{ $error }}</li>
    @endforeach
</ul>
</div>
@endif
@endsection