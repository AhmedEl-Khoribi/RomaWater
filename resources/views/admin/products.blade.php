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
  <h3 class="box-title">Data Table For Products</h3>
</div>
    <div class="box-body">
      <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
          <th>ID</th>
          <th>Category</th>
          <th>Name</th>
          <th>Desc</th>
          <th>Name French</th>
          <th>Desc French</th>
          <th>Image</th>
          <th>Price</th>
          <th>Youtube Link</th>
          <th>Edit / Delete</th>
        </tr>
        </thead>
        <tbody>
@foreach($products as $product)
        <tr>
          <td>{{ $product->id }}</td>
          <td>{{ $product->category->name }}</td>
          <td>{{ $product->name }}</td>
          <td>{{ $product->desc }}</td>
          <td>{{ $product->name_fr }}</td>
          <td>{{ $product->desc_fr }}</td>
          <td><img src="/uploads/{{ $product->image }}" width="70"></td>
          <td>{{ $product->price }}</td>
          <td>{{ $product->video_link }}</td>
          <td>
            <a href="/admin/edit_product/{{ $product->id }}" class="btn btn-app">
                 <i class="fa fa-edit"></i> Edit
            </a>
            <a href="/admin/delete_product/{{ $product->id }}" class="btn btn-app">
                 <i class="fa fa-times"></i> Delete
            </a>
          </td>
        </tr>
@endforeach
        </tbody>
      </table>
    </div>
  </div>

          @endsection