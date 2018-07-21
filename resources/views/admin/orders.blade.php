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
          <th>Name</th>
          <th>Product</th>
          <th>Quantity</th>
          <th>Email</th>
          <th>Phone</th>
          <th>Address</th>
          <th>City</th>
          <th>Created At</th>
          <th>Check</th>
        </tr>
        </thead>
        <tbody>
@foreach($mails as $mail)
        <tr>
          <td>{{ $mail->id }}</td>
          <td>{{ $mail->name }}</td>
          <td>{{ $mail->product->name }}</td>
          <td>{{ $mail->quantity }}</td>
          <td>{{ $mail->email }}</td>
          <td>{{ $mail->phone }}</td>
          <td>{{ $mail->address }}</td>
          <td>{{ $mail->city }}</td>
          <td>{{ $mail->created_at->diffForHumans() }}</td>
          <td>
            <a href="/admin/make_check/{{ $mail->id }}" class="btn btn-app">
                 <i class="fa fa-check"></i> CHECK
            </a>
          </td>
        </tr>
@endforeach
        </tbody>
      </table>
    </div>
  </div>

          @endsection