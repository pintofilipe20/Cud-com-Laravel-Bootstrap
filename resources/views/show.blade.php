@extends('template.template')
@section('content')
<h2 class="text-center ">Visualizar</h2>


<div class="col-8 m-auto">
    @php
    $user=$book->find($book->id)->relUsers;
    @endphp
<div class="card">
  <h5 class="card-header">Destaque</h5>
  <div class="card-body">
    <h5 class="card-title">Título</h5>
    <p class="card-text">{{$book->title}}</p>
    <h5 class="card-title">Páginas</h5>
    <p class="card-text">{{$book->pages}}</p>
    <h5 class="card-title">Preço</h5>
    <p class="card-text">{{$book->price}}</p>
    <h5 class="card-title">Autor</h5>
    <p class="card-text">{{$user->name}}</p>
    <h5 class="card-title">E-mail do Autor</h5>
    <p class="card-text">{{$user->email}}</p>
  </div>
</div>
</div>
@endsection