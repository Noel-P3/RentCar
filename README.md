# RentCar
Una aplicacion para rentar vehiculos hecho en Delphi XE8

Para poder compilar este proyecto hecho en delphi version XE8 necesitaran algunas dependencias bastantes especificas

AlphaControls XE8
FastReport 5
TMS Component XE8
Unidac XE8

Una vez Obtenidos estos componentes el programa deberia de poder compilar correctamente.

Una vez ejecuta el programa se intentara  a una base de datos local en Microsoft SQL Server a una base de datos llamada RentCar, Puedo imaginar que no lo tendran por lo tanto
el script para inicializar la base de datos con un usuario creado en la carpeta raiz del proyecto.

https://github.com/Noel-P3/RentCar/tree/main/Inicializar%20base%20de%20datos

Si tienen la base de datos en su maquina local, pueden proceder a usar la aplicacion :D

Para ejecutar la aplicacion que esta localizada eb https://github.com/Noel-P3/RentCar/blob/main/Win32/Debug/RentCar.exe necesitan tomar en cuenta que el DBProvider.xml apunte a la ip donde esta la base de datos ejecutando en mi caso es la local osea 127.0.0.1...

La base de datos tiene que llamarse *RentCar* o si no, no funcionara

PD: Soy nuevo en esto de publicar proyectos
