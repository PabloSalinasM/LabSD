@extends('adm')
@section('contenido')

 <div class="row">
   <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
    @include('search')
   <h3>Listado de busqueda</h3> <!--<a href="administrador/create"><button>Nuevo</button></a></h3>-->
   
   </div>

 </div>

 <div class="row">
   <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="table-responsive">

      <table class="table table-striped table-bordered table-condensed table-hover">
        <thead>
          
          <th> ID </th>
          <th> Nombre </th>
          <th> Sigla </th> 
          <th> Capital</th>
          <th> Idioma </th>
          <th> Poblacion </th>
          <th> Moneda </th> 
          <th> Independencia</th>
          <th> Lema </th>
          <th> Presidente</th>
          <th> Continente </th>
      
        </thead>

        @foreach($buscador as $bus)

        <tr>
          <td>{{$bus->id}}</td>
          <td>{{$bus->nombre}}</td>
          <td>{{$bus->sigla}}</td>
          <td>{{$bus->capital}}</td>
          <td>{{$bus->idioma}}</td>
          <td>{{$bus->poblacion}}</td>
          <td>{{$bus->moneda}}</td>
          <td>{{$bus->independencia}}</td>
          <td>{{$bus->lema}}</td>
          <td>{{$bus->presidente}}</td>
          <td>{{$bus->continente}}</td>
        </tr>
        
      

        @endforeach

      </table>
    </div>
    {{$buscador->render()}}
   </div>

 </div>
@endsection