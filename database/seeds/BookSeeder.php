<?php

use Illuminate\Database\Seeder;
use App\Models\ModelBook;

class BookSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(ModelBook $book)
    {
    $book->create([
        'title'=>'A cabra da minha mãe',
        'pages'=>'100',
        'price'=>'200.00',
        'id_user'=>'3'


    ]);
    $book->create([
        'title'=>'A cabra da meu pai',
        'pages'=>'100',
        'price'=>'200.00',
        'id_user'=>'2'


    ]);
    $book->create([
        'title'=>'A vizinha bruxa',
        'pages'=>'150',
        'price'=>'500.00',
        'id_user'=>'2'


    ]);
    }
}
