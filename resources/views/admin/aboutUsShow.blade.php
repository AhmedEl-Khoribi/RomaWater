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
  <h3 class="box-title">Data Table For About Us</h3>
</div>
    <div class="box-body">
      <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
          <th>ID</th>
          <th>Image</th>
          <th>Desc</th>
          <th>Desc French</th>
          <th>Edit</th>
        </tr>
        </thead>
        <tbody>
@foreach($about_us as $a)
        <tr>
          <td>{{ $a->id }}</td>
          <td><img src="/uploads/{{ $a->img }}" width="75"></td>
          <td><?= $a->desc ?></td>
          <td><?= $a->desc_fr ?></td>
          <td>
            <a href="/admin/edit_about_us/{{ $a->id }}" class="btn btn-app">
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