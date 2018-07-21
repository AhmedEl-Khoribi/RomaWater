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
  <h3 class="box-title">Data Table For Contact Us</h3>
</div>
    <div class="box-body">
      <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
          <th>ID</th>
          <th>Email</th>
          <th>Phone</th>
          <th>Fax</th>
          <th>Address</th>
          <th>Edit</th>
        </tr>
        </thead>
        <tbody>
@foreach($contact_us as $c)
        <tr>
          <td>{{ $c->id }}</td>
          <td>{{ $c->email }}</td>
          <td>{{ $c->phone }}</td>
          <td>{{ $c->fax }}</td>
          <td>{{ $c->address }}</td>
          <td>
            <a href="/admin/edit_contact_us/{{ $c->id }}" class="btn btn-app">
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