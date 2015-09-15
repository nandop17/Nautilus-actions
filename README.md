# << Nautilus-actions >>
=================


DESCRIPCIÓN
====================================================================
Scripts variados para utilizarse en Ubuntu con el explorador de carpetas Nautilus.
Los scripts están programados en lenguaje Shell script y utiliza Zenity para generar los dialogos simples.




REQUISITOS
====================================================================
Los scripts pueden funcionar en cualquier SO GNU/Linux u otro SO basado en Unix.
Los requisitos son:
- La librería GTK+ Zenity (instalada por defecto en UBUNTU):
  
  $ sudo apt-get install zenity

- Para aprovechar todos los scripts con nautilus necesitamos nautilus(instalado por defecto en UBUNTU):
  
  $ sudo apt-get install nautilus
  
- Y el programa de configuración de nautilus-actions para ejecutar los scripts en el menu contextual:
  
  $ sudo apt-get install nautilus-actions
  


INSTALACION
====================================================================

<b>Step 1:</b>
Descarga los scripts en la carpeta: 

/home/$USER/Scripts/Nautilus-actions/

<i>NOTA: Crea las carpetas necesarias para sea esta ruta y sino se tienen que modificar la ruta en los scripts 
en el programa nautilus-actions-config-tool.</i>

<b>Step 2:</b>
Dar permisos de ejecución a todos los scripts de la carpeta (<i>NOTA: cambia la dirección si es necesario</i>):
  
  $ chmod +x -R /home/$USER/Scripts/Nautilus-actions/.


<b>Step 3:</b>
Abrir nautilus-actions-config-tool
y en el menú en la pestaña herramientas --> Asistenete de importación y a continuación se importa todos los ficheros tipo desktop de la carpeta "Exportados" del proyecto.

<b>Step 4:</b>
Reinicia la sesión de usuario.


USO
====================================================================
Botón derecho sobre ficheros o sobre cualquier espacio de explorador de archivos Nautilus para abrir el menú contextual
y tendremos los scripts oportunos en "Nautilus-Actions actions". A disfrutar!!



