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
  <h3 class="box-title">Data Table For Categories</h3>
</div>
    <div class="box-body">
      <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Desc</th>
          <th>Name French</th>
          <th>Desc French</th>
          <th>Edit</th>
          <th>Delete</th>
        </tr>
        </thead>
        <tbody>
@foreach($categories as $category)
        <tr>
          <td>{{ $category->id }}</td>
          <td>{{ $category->name }}</td>
          <td><?= $category->desc ?></td>
          <td>{{ $category->name_fr }}</td>
          <td><?= $category->desc_fr ?></td>
          <td>
            <a href="/admin/edit_category/{{ $category->id }}" class="btn btn-app">
                 <i class="fa fa-edit"></i> Edit
            </a>
          </td>
          <td>
            <a href="/admin/delete_category/{{ $category->id }}" class="btn btn-app">
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