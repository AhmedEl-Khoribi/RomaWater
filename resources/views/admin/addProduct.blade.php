@extends('admin.master')
@section('content')

<form method="POST" action="/admin/add_product" enctype="multipart/form-data">
    {{ csrf_field() }}
<div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Create Product</h3>
            </div>
    <div class="form-group has-success">
      <label class="control-label" for="inputSuccess"><i class="fa fa-check"></i> Name</label>
      <input type="text" class="form-control" name="name" id="inputSuccess">
      <span class="help-block">Must Be Deep &amp; Decribtive</span>
    </div>
    <div class="form-group has-success">
      <label class="control-label" for="inputSuccess"><i class="fa fa-check"></i> Name French</label>
      <input type="text" class="form-control" name="name_fr" id="inputSuccess">
      <span class="help-block">Must Be Deep &amp; Decribtive</span>
    </div>
   <div class="box box-info">
    <div class="box-header">
      <h3 class="box-title">Description
      </h3>
      <div class="pull-right box-tools">
        <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip"
                title="Collapse">
          <i class="fa fa-minus"></i></button>
        <button type="button" class="btn btn-danger btn-sm" data-widget="remove" data-toggle="tooltip"
                title="Remove">
          <i class="fa fa-times"></i></button>
      </div>
    </div>
    <div class="box-body pad">
            <textarea id="editor1" name="desc" rows="10" cols="80">
            </textarea>
    </div>
    <div class="box box-info">
    <div class="box-header">
      <h3 class="box-title">Description French
      </h3>
      <div class="pull-right box-tools">
        <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip"
                title="Collapse">
          <i class="fa fa-minus"></i></button>
        <button type="button" class="btn btn-danger btn-sm" data-widget="remove" data-toggle="tooltip"
                title="Remove">
          <i class="fa fa-times"></i></button>
      </div>
    </div>
    <div class="box-body pad">
            <textarea id="editor2" name="desc_fr" rows="10" cols="80">
            </textarea>
    </div>
  <div class="box-body">
    <div class="row">
       <div class="col-xs-3">
        <label>Price</label>
        <input type="text" name="price" class="form-control">
      </div>
      <div class="col-xs-3">
        <label>Youtube Link</label>
        <input type="text" name="video_link" class="form-control">
      </div>
      <div class="col-xs-4">
      <label>Image</label>
        <input type="file" name="image" class="form-control">
      </div>
        <div class="col-xs-3">
          <div class="form-group">
          <label>Category</label>
          <select class="form-control" name="category_id" id="gender">
            <option selected disabled></option>
            @foreach($cats as $cat)
            <option value="{{ $cat->id }}">{{ $cat->name }}</option>
            @endforeach
          </select>
        </div>
      </div>
   </div>
  </div>
<div class="box-footer">
<button type="submit" class="btn btn-primary btn-block btn-flat">Create Product</button>
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