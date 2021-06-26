@extends('template.template')
@section('content')
<h2 class="text-center mt-3 mb-4">@if(isset($book)) Editar Livro @else Cadastrar Livro @endif</h2>
<div class="col-8 m-auto">
   
  @if(isset($book))
  <form class="FormEdit" id="FormEdit" method="post" action='{{url("books/$book->id")}}'>
  @method('PUT')
    @else
  <form class="FormCad" id="FormCad" method="POST" action="{{url('books')}}">
    @endif
    @csrf 
    <input class="form-control" type="text" name="title" id="title" placeholder="Titulo:" value="{{$book->title ?? ''}}" required><br>
    <select name="id_user" id="id_user" class="form-control">
    
    <option value="{{$book->relUsers->id ?? ''}}">{{$book->relUsers->name ?? 'Autor'}}</option>
    
    @foreach($users as $user)
    <option value="{{$user->id}}">{{$user->name}}</option>
    @endforeach

    </select><br>
    <input class="form-control" type="text" name="pages" id="pages" placeholder="Páginas:" value="{{$book->pages ?? ''}}" required><br>
    <input class="form-control" type="text" name="price" id="price" placeholder="Preço:" value="{{$book->price ?? ''}}" required><br>
    <input class="btn btn-success" type="submit" value="@if(isset($book)) Actualizar @else Cadastrar @endif">
  </form>
</div>
@endsection