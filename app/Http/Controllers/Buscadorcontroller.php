<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use laravel2\Http\Requests;
use laravel2\usuario;
use Illuminate\Support\Facades\Redirect;
use laravel2\Requests\BuscadorFormRequest;
use DB;


class Buscadorcontroller extends Controller
{
    public function __construct(){



    }

     public function index(Request $request){
    	if ($request){
    		$query=trim($request->get('searchText'));
    		$buscador = DB::table('user')->where('nombre','LIKE','%'.$query.'%') 
            -> orwhere('sigla','LIKE','%'.$query.'%')
            -> orwhere('capital','LIKE','%'.$query.'%')
            ->orwhere('idioma','LIKE','%'.$query.'%')
            ->orwhere('poblacion','LIKE','%'.$query.'%')
            ->orwhere('moneda','LIKE','%'.$query.'%')
            ->orwhere('independencia','LIKE','%'.$query.'%')
            ->orwhere('lema','LIKE','%'.$query.'%')
            ->orwhere('presidente','LIKE','%'.$query.'%')
            ->orwhere('continente','LIKE','%'.$query.'%')
    		->orderBy('id','asc') 
    		->paginate(6);
    		//dd($buscador);
    		return view('buscador',["buscador"=>$buscador,"searchText"=>$query]);
    	}
    }

    public function create(){
        return view("administrador.create");
    }

    public function store(BuscadorFormRequest $request){
        $Buscador = new usuario;
        $Buscador ->nombre=$request->get('nombre');
        $Buscador ->sigla=$request->get('sigla');
        $Buscador ->capital=$request->get('capital');
        $Buscador ->idioma=$request->get('idioma');
        $Buscador ->poblacion=$request->get('poblacion');
        $Buscador ->moneda=$request->get('moneda');
        $Buscador ->independencia=$request->get('independencia');
        $Buscador ->lema=$request->get('lema');
        $Buscador ->presidente=$request->get('presidente');
        $Buscador ->continente=$request->get('continente');
        $Buscador ->save();
        return Redirect::to('Buscador');
    }
    public function show($id){
        return view("buscador.show",["Buscador"=>usuario::findOrFail($id)]);
    }

    public function edit($id){
        return view("buscador.edit",["buscador"=>usuario::findOrFail($id)]);
    }
    public function update(BuscadorFormRequest $request,$id){
        
        $Buscador ->nombre=$request->get('nombre');
        $Buscador ->sigla=$request->get('sigla');
        $Buscador ->capital=$request->get('capital');
        $Buscador ->idioma=$request->get('idioma');
        $Buscador ->poblacion=$request->get('poblacion');
        $Buscador ->moneda=$request->get('moneda');
        $Buscador ->independencia=$request->get('independencia');
        $Buscador ->lema=$request->get('lema');
        $Buscador ->presidente=$request->get('presidente');
        $Buscador ->continente=$request->get('continente');
        $Buscador->update();
        return Redirect::to('Buscador');
    }
    public function destroy($id){
        $Buscador=usuario::findOrFail($id);
        return Redirect::to('Buscador');
    }
}