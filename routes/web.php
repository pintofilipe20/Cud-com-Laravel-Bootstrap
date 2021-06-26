<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|


*/
/*GRUPO DE ROTAS 
route::get('/login', function(){
    return 'login';
})->name('login');
route::middleware(['auth'])->group(function(){

    route::get('/admin', function(){
        return "Dashboard da Aplicação";
    });
    route::get('/financeiro', function(){
        return "Plano Financeiro";
    });
    route::get('/', function(){
        return "Admin";
    });
});


REDIRECCIONAR UMA ROTA
route::redirect('redirect1', 'redirect2');

route::get('redirect2', function(){
    return "Redireccionando na 2";
});

route::get('/contacto',function(){
    return "contacto";
});
Trabalhar com Rotas e Parametros, primeiro é mais bom
route::get('/produto/{param?}', function($param=''){
    return "Produtos da categoria: {$param}";
});

route::get('/produtos/{param}', function($param){
    return "Produtos da categoria: {$param}";
});

============   Metodo Aconselhavel ================
route::match(['GET,POST'],'/math', function(){
    return 'match';
});


/*
No caso de estar dentro de uma pasta/*
route::get('/',function(){
    return view('site.contacto');
});

Route::get('/', function () {
    return view('index');
});
outra via de chamar um controlador com o seu próprio método
Route::get('/','BookController@index');
*/ 

Route::get('/','BookController@index');
Route::resource('/books','BookController');

