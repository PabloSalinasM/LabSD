 ********************************************   Laboratorio Sistemas Distribuidos Primera Entrega Evaluada *********************************************************

Integrantes: Camila Marquez, Yanira Sáez, Pablo Salinas.
Profesor: Daniel Wladdimiro
Ayudante: Ian Orellana.
Fecha: 22 de octubre de 2017.

*****************************  Especificaciones ********************************************************************************************************
A continuación se especifica el sistema operativo y las tecnologías a utilizar.

- Sistema operativo: Windows 10
- Tecnologías: - Laravel versión 5.5
               - Composer versión 1.5.2
			   - Xampp versión 7.1.10

**************************** Instrucciones de Instalación *********************************************************************************************************


--------------- Xampp -------------------------

1) Primero se procede a instalar Xampp, por lo que se ingresa al sitio web de ApacheFriends https://www.apachefriends.org/download.html , se escoge la opción de descarga con la versión 7.1.10 para Windows.

2) Finalizada la descarga se ingresa en la carpeta donde se guardo el programa Xampp.

3) Luego se hace doble click en el archivo del programa Xampp y se abrirá el asistente Bitnami para proceder a instalar Xampp y se da click en el botón de siguiente.

4) Se seleccionan todos los componentes que aparecen en la ventana y se apreta siguiente. Luego se selecciona la carpeta donde se guardara el archivo para su instalación y se apreta siguiente.

5) A continuación aparece la ventana Bitnami para Xampp y se selecciona siguiente. Luego aparece la ventana de Bienvenida a Xampp y se selecciona siguiente y se espera a que finalice la instalación.

6) Una vez finalizada la instalación, se abre el Panel de Control de Xampp y presiona los botones de Start para iniciar los módulos de Apache y MySQL. 

7) Finalmente se ingresa al navegador, se escribe la siguiente dirección http://localhost/phpmyadmin/ para comprobar que están corriendo correctamente Apache y MySQL.


---------------- Composer ---------------------------------


 1) Para descargar composer se procede a ingresar al sitio web de Composer https://getcomposer.org/download/ y se realiza click en el link azul Composer-Setup.exe, que es el instalador para Windows.

 2) Una vez terminada la descarga del instalador de Composer, se dirije a la carpeta descargas y realiza click en el instalador de Composer, abriendose la venta de inicio del instalador y se realiza click para dar inicio a la instalación.

 3) Luego en la selección de componentes, se dejan seleccionadas las opciones que vienen por defecto y se apreta el botón de siguiente.

 4) Luego se selecciona la carpeta donde este guardado el archivo php.exe, es decir, se busca la carpeta Xampp, se ingresa a la carpeta php y se selecciona el archivo php.exe, luego se hace click en siguiente.

 5) A continuación se realiza click en el botón Instalar y se espera a que se termine la instalación, luego se realiza click en el botón siguiente y finalmente en el botón Finalizar.

 6) Luego ingresamos al Sistema de Comandos de Windows para comprobar que quedo correctamente instalado, digitamos Composer en la línea de comandos y aparecerá información respecto a nuestra versión y comandos de Composer.


 ------------------ Laravel -------------------------------------------


 1) Luego de haber instalado Xampp y Composer, se procede a ingresar al sitio web de Laravel https://laravel.com/docs/5.5/installation.

 2) Ingresamos al Sistema de Comandos de Windows, nos ubicamos en la siguiente dirección Path/xampp/htdocs y se procede a ingresar el siguiente comando para instalar laravel y crear un proyecto:
 		composer create-project --prefer-dist laravel/laravel Nombre_Proyecto

 

 ********************** Montar la Base de Datos y Realizar Migración ********************************************************************************* 


1) Ingresamos al navegador e introducimos la siguiente dirección web localhost/phpmyadmin/, a un costado izquierdo se observan las bases de datos existentes y realizamos click donde dice Nueva al lado del icono de base de datos con un circulo verde.

2) Se procede a crear la base de datos, ingresamos como nombre de la base de datos labsd y dejamos la opción por defecto que dice Cotejamiento, y realizamos click en el botón Crear.

3) Luego ingresamos a la opción Importar, se selecciona el archivo de la base de datos adjunta en el repositorio, denominada labsd.sql y se dejan las demás opciones que vienen por defecto, finalmente se realiza click en el botón Continuar. Aparecerá un mensaje por pantalla que la importación fue ejecutada exitosamente.

4) Luego procedemos a copiar el proyecto laravel2 (el cual contiene el laboratorio realizado) en la carpeta xampp/htdocs.

5) Ingresamos al Sistema de Comandos de Windows, nos ubicamos en la siguiente dirección Path/xampp/htdocs/laravel2 y se procede a ingresar el siguiente comando:
			php artisan migrate



****************************** Correr el Laboratorio **************************************************************

1) Ingresamos al Sistema de Comandos de Windows, nos ubicamos en la siguiente dirección Path/xampp/htdocs/laravel2 y se procede a ingresar el siguiente comando para correr el servidor:
			php artisan serve

2) Finalmente se abre el navegador ingresando a la dirección del servidor localhost:8000 , en el caso de no funcionar ingresar al proyecto mediante la siguiente dirección web  localhost/laravel2/public . Aparecerá por pantalla el proyecto que indica el Laboratorio_SD y da la opción para ingresar al buscador.

3) Se realiza click en IR al Buscador y se redirecciona a la vista del buscador.

4) En el cuadro de texto que dice Buscar, se ingresa la letra, número, nombre de País que se desea buscar para la tarea asignada a los alumnos y luego se realiza click en el botón Buscar, así aparecerá por pantalla la fila encontrada respecto al texto ingresado.

5) En la parte inferior de la vista, al lado de Copyright 2017-2020, en letras azules esta el link inicio de la app, el cual redirecciona al home del proyecto.





