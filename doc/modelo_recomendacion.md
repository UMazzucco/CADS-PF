# Modelo de Recomendación

Se optó por utilizar un modelo de filtro colaborativo. El mismo realiza una matriz con dos ejes: usuarios y productos, y coloca en las intersecciones las calificaciones que los usuarios dieron en sus reseñas, promediada con el cálculo de sentimiento.

Utilizamos para ello el algoritmo KNNWithMeans de la librería Surprise.

![Alt text](../src/matriz_recomendacion.png?raw=true "")

El modelo realizará predicciones para los campos que queden en blanco, en base a comparaciones vectoriales (por cálculo del coseno) de las evaluaciones que cada usuario dió a cada producto.

![Alt text](../src/colab_filtering.png?raw=true "")

Como resultado, el modelo devuelve los 5 productos para los cuales predijo las mayores calificaciones.

Dado que el algoritmo poseía un límite en la cantidad de productos que se pueden ingresar, optamos por aplicar un filtro. En este caso, seleccionamos los productos más populares de cada categoría. De esta manera manipulamos nuestro sesgo y lo adaptamos a los comportamientos generales del mercado.

## Usuario Nuevo

Al realizar las recomendaciones para un usuario nuevo, nos encontramos principalmente con productos de electrónica, que son útiles para cualquier usuario.

![Alt text](../src/recomendaciones_nuevo.jpg?raw=true "")

## Usuario Existente

A la hora de realizar predicciones para un usuario ya existente, el modelo no resultaba lo suficientemente preciso debido al sesgo original. Para ello decidimos aplicar un filtro nuevo, que se colocaría en primer lugar.

Seleccionaríamos entonces dos productos que haya comprado el usuario que nos interesa. Para cada producto realizaríamos entonces predicciones separadas, utilizando como base sólo a aquellos usuarios que hubieran comprado dicho producto.

![Alt text](../src/recomendaciones.jpg?raw=true "")

Los resultados fueron más que satisfactorios. Utilizamos en este caso filtros en base al libro infantil y a las cápsulas de café que había comprado el usuario.
