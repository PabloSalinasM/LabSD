<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class usuario extends Model
{
   protected $table='user';

    protected $primarykey='id';

    public $timestamps = false;

    protected $fillable = [
    	'nombre',
    	'sigla',
    	'capital',
    	'idioma',
    	'poblacion',
    	'moneda',
    	'independecia',
    	'lema',
    	'presidente',
    	'continente';
    	 
}
