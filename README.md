# estadisticas-del-futbol-argentino

Proyecto en R que busca recolectar y procesar información acerca del fútbol argentino, sus equipos y resultados. 

## Descripción

El proyecto se basa en ejecutar un script de código R que lee datos desde un archivo CSV como base, y retorna:

- Tabla de posiciones
- Cantidad de partidos ganados por equipo
- Cantidad de goles por partido
- Genera gráficos comparativos de rendimiento entre equipos

## Tecnologías utilizadas

- R
- Google Colab

## Estructura del proyecto

estadisticas-del-futbol-argentino/
│
├── datos/ datos.csv
├── scripts/ script.r
├── resultados/ 
├── README.md
└── .gitignore

\## Cómo usarlo

1. Clonar el repositorio:

```bash

git clone https://github.com/Zelariel/estadisticas-del-futbol-argentino.git

```

2. Abrir el proyecto en RStudio

3. Instalar las dependencias necesarias:

```r

install.packages("tidyverse")

install.packages("ggplot2")

```

4\. Ejecutar el script:

```r

source("analisis.R")

```

## Posibles mejoras

- Interfaz gráfica
- Exportación automática a Excel
- Dashboard interactivo
- Más tipos de análisis estadísticos

## Autor

Desarrollado por 



