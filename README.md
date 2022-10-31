# Proyecto ReBaF de CADS

## About

Este es un proyecto final para SoyHenry, en el que realizaremos un procesamiento y análisis de reseñas de amazon, además de un modelo de recomendación de productos. Para ello nos pusimos en la piel de una compañía ficticia de soluciones informáticas: CADS.

![Alt text](src/cads_logo_red.png?raw=true "")

## Nuestro equipo

![Alt text](src/team.png?raw=true "")

## Doc

La carpeta 'Doc' contiene la documentación a lo largo del proyecto: planificación inicial, consignas originales y explicaciones de los procesos que se fueron realizando.

## Test.json

Archivo de reseñas de instrumentos musicales que se utilizó para hacer pruebas de código de manera local.

## Src

Contiene imágenes que nos son de utilidad en el proyecto.

## Code

Contiene los códigos utilizados en el proceso:

### Pipeline.sh

Realiza la obtención de los datos y su migración al sistema Hadoop.

### Procesamiento.py

Contiene toda la ETL, procesamiento de texto y unión de las tablas

### To_bucket.sh

Contiene los comandos utilizados para llevar el archivo resultante a un bucket para su posterior utilización en Looker.

### Modelo_final.ipynb

Permite la ejecución del modelo de recomendación, que no modifica los archivos existentes.

### Ipynb

Contiene diversos archivos que se fueron utilizando a lo largo del proyecto.

## Gantt del Proyecto (No incluye la semana previa de planificación)

![Alt text](src/gantt.png?raw=true "")
