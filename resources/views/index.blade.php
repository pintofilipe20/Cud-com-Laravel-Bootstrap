@extends('template.template')
@section('content')
<h2 class="text-center ">Crud com Laravel</h2>

<div class="text-center mt-4 mb-4">
          <a href="{{url('books/create')}}">
          <button type="button" class="btn btn-success">Cadastrar</button>
          </a>
</div>
<div class="col-8 m-auto">
  @csrf

<table class="table table-hover text-center">
  <thead>
        <tr>
        <th scope="col">Id</th>
        <th scope="col">Titulo</th>
        <th scope="col">Autor</th>
        <th scope="col">Preço</th>
        <th scope="col">Acções</th>
        </tr>
    </thead>
    <tbody>
      @foreach($book as $books)
      @php
      
      $user=$books->find($books->id)->relUsers;

      @endphp
        <tr>
        <th scope="row"> {{$books->id}}</th>
        <td> {{$books->title}}</td>
        <td>{{$user->name}}</td>
        <td>{{$books->price}}</td>
        <td>
          <a href='{{url("books/$books->id")}}'>
          <button type="button" class="btn btn-info">Visualizar</button>
          </a>
          <a href='{{url("books/$books->id/edit")}}'>
          <button type="button" class="btn btn-primary">Editar</button>
          </a>
          <a href='{{url("books/$books->id")}}' class="js-del">
          <button type="button" class="btn btn-danger">Deletar</button>
          </a>
        </td>
        </tr>
        @endforeach
  </tbody>
</table>
{{$book->links()}}
</div>
@endsection