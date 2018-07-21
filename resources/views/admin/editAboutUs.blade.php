@extends('admin.master')
@section('content')

<form method="POST" action="/admin/updateAboutUs/{{ $about->id }}"  enctype="multipart/form-data">
	{{ csrf_field() }}
  <input type="hidden" name="_method" value="PATCH">
<div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Edit Site About Us</h3>
            </div>
	<div class="row">
	  <div class="col-xs-4">  
        <h5>Old Image</h5>
      <img src="/uploads/{{ $about->img }}" width="215">
      </div>
      <div class="col-xs-8">  
        <label>Upload Image</label>
        <input type="file" name="img" class="form-control">
      </div>
	</div>
   <div class="box box-info">
    <div class="box-header">
      <h3 class="box-title">Describtion
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
                  {{ $about->desc }}
            </textarea>
    </div>
  </div>
   <div class="box box-info">
    <div class="box-header">
      <h3 class="box-title">Describtion French
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
                  {{ $about->desc_fr }}
            </textarea>
    </div>
  </div>
<div class="box-footer">
<button type="submit" class="btn btn-success btn-block btn-flat">Edit Site's About Us</button>
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