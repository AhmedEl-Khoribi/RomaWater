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
</div>
    <div class="box-body">
      <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
          <th>Name</th>
          <th>Email</th>
          <th>Message</th>
          <th>See</th>
        </tr>
        </thead>
        <tbody>
@foreach($all as $a)
        <tr>
          <td>{{ $a->fname }} {{ $a->lname }}</td>
          <td>{{ $a->email }}</td>
          <td><?= $a->message ?></td>
          <td>
            <a href="/admin/see/{{ $a->id }}" class="btn btn-app">
                 <i class="fa fa-check"></i> Seen
            </a>
          </td>
        </tr>
@endforeach
        </tbody>
      </table>
    </div>
  </div>
@endsection