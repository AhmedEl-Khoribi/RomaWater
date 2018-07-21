@extends('admin.master')
@section('content')

<form method="POST" action="/admin/updateContactUs/{{ $contact->id }}"  enctype="multipart/form-data">
	{{ csrf_field() }}
  <input type="hidden" name="_method" value="PATCH">
<div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Edit Site Contact Us</h3>
            </div>
	<div class="form-group has-success">
	  <label class="control-label" for="inputSuccess"><i class="fa fa-check"></i> Address</label>
	  <input type="text" class="form-control" name="address" id="inputSuccess" value="{{ $contact->address }}">
	  <span class="help-block">Current Address of the Company</span>
	</div>
  <div class="input-group">
    <div class="input-group-addon">
        <i class="fa fa-phone"></i>
    </div>
    <input name="phone" type="text" class="form-control" value="{{ $contact->phone }}">
  </div>
  <div class="input-group">
    <div class="input-group-addon">
       <i class="fa fa-envelope"></i>
    </div>
    <input name="email" type="text" class="form-control" value="{{ $contact->email }}">
  </div>
   <div class="input-group">
    <div class="input-group-addon">
       <i class="fa fa-fax"></i>
    </div>
    <input name="fax" type="text" class="form-control" value="{{ $contact->fax }}">
  </div>
<div class="box-footer">
<button type="submit" class="btn btn-success btn-block btn-flat">Edit Site's Contact Us Us</button>
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