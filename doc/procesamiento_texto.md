# Procesamiento de Texto

Aplicamos al texto de las reseñas un procesamiento en dos etapas.

## Análisis de sentimiento

Utilizamos una función de la librería NLTK para realizar un análisis de sentimiento a las reseñas. El resultado era un valor de tipo float entre -1 y 1, que se discretizó en valores que asemejaran el puntaje (de 1 a 5) que se le da al producto en la reseña.

## Features

Armamos listas de palabras claves que buscar en el texto de las reseñas, para así saber si se había hablado de la calidad, el precio o la facilidad de uso del producto.

![Alt text](../src/dicts.png?raw=true "")

Se comparó con el sentimiento para darle así un puntaje positivo o negativo, dando así lugar a 3 columnas nuevas, cada una con valores 1 (positivo), 0 (neutro) o -1 (negativo).

Estas 3 últimas variables nos permitirán posteriormente realizar un análisis personalizado de KPIs, mientras que el sentimiento se utilizará para darle mayor precisión al modelo de recomendación.
