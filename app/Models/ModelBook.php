<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ModelBook extends Model
{
    //para que o sistema leia que a tabela é Book
    protected $table='book';
    protected $fillable=['id_user','title','pages','price'];

    public function relUsers(){
        /**Um livro so pode ter um autor ER-1*/
        return $this->hasOne('App\Models\User', 'id', 'id_user');
    } 
}

