# estadisticas-del-futbol-argentino

Proyecto en R que busca recolectar y procesar información acerca del fútbol argentino, sus equipos y resultados. 

## Descripción

El proyecto se basa en ejecutar un script de código R que lee datos desde un archivo CSV como base, y retorna:

- Tabla de posiciones
- Cantidad de partidos ganados por equipo
- Cantidad de goles por partido
- Genera gráficos comparativos de rendimiento entre equipos

## Origen de los datos

El dataset utilizado fue generado por ChatGPT, utilizando información de equipos reales de fútbol argentino. Los partidos ganados, goles y demás datos fueron inventados pero manteniendo el status real de cada equipo de fútbol. Es decir, que por ej. River Plate es un buen equipo, por ende en el dataset se ve reflejado en sus resultados, mientras que otros equipos menos conocidos o no tan buenos competitivamente, tienen resultados más acordes, manteniendo el paralelismo con el rendimiento de los equipos en la vida real.

## Tecnologías utilizadas

- R
- Google Colab

## Estructura del proyecto
```
estadisticas-del-futbol-argentino/
│
├── datos/
│   ├── dataset.csv
│   └── datos.txt
├── scripts/
│   ├── graficos.R
│   └── sctipts.txt
├── resultados/
│   ├── grafico_comparativa.png
│   ├── grafico_goles_totales.png
│   ├── grafico_partidos_ganados.png
│   └── resultados.txt
├── README.md
└── .gitignore
```

## Cómo usarlo

1. Instalar R y RStudio
  - R -> [The R Project](https://www.r-project.org/)
  - RStudio -> [RStudio IDE](https://posit.co/downloads)

2. Descargar el archivo 'script.R' y el archivo 'dataset.csv'

3. Utilizar misma estructura de carpetas para que funcione o modificar la ruta relativa dentro del 'script.R' para que detecte el archivo.

4\. Abrir RStudio y ejecutar el script:
* Mediante comandos en consola:
```r

source("graficos.R")

```
* O desde interfaz gráfica:
  - File -> Open file...
  - CTRL + O

## Posibles mejoras

- Interfaz gráfica
- Exportación automática a Excel
- Dashboard interactivo
- Más opciones de graficos 
- Mejores gráficos a través de la utilización de librerías externas

## Autores

Desarrollado por estudiantes de la carrera "Tecnicatura superior en programación" de la UTN, Argentina:

- Nehuel Mendoza (Comisión: M26 C1-27)
- Burgos Matías (Comisión: M26 C1-20)
