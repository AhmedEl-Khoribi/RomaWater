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
  <h3 class="box-title">Data Table For Frequently Asked Questions</h3>
</div>
    <div class="box-body">
      <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
          <th>ID</th>
          <th>Question</th>
          <th>Answer</th>
          <th>Question French</th>
          <th>Answer French</th>
          <th>Edit/Delete</th>
        </tr>
        </thead>
        <tbody>
@foreach($faqs as $faq)
        <tr>
          <td>{{ $faq->id }}</td>
          <td>{{ $faq->question }}</td>
          <td><?= $faq->answer ?></td>
          <td>{{ $faq->question_fr }}</td>
          <td><?= $faq->answer_fr ?></td>
          <td>
            <a href="/admin/edit_faqs/{{ $faq->id }}" class="btn btn-app">
                 <i class="fa fa-edit"></i> Edit
            </a>
            <a href="/admin/delete_faq/{{ $faq->id }}" class="btn btn-app">
                 <i class="fa fa-close"></i> Delete
            </a>
          </td>
        </tr>
@endforeach
        </tbody>
      </table>
    </div>
  </div>
@endsection