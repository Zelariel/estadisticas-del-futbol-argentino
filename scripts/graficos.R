# ============================================================
# SCRUM-2: Generación de gráficos comparativos - Escenario D
# Autor: P2 - Desarrollador / P3 - QA y Visualización
# ============================================================

# >> Cargar el archivo CSV
# Usamos ruta relativa para garantizar reproducibilidad en Google Colab

datos <- read.csv("datos/dataset.csv")

# >> Calcular goles por partido (necesario para los gráficos)
# Dividimos goles totales entre partidos jugados y redondeamos

datos$goles_por_partido <- round(datos$goles_totales / datos$partidos_jugados, 1)

# >> Ordenar por partidos ganados (de mayor a menor) para mejor visualización

datos_ord <- datos[order(datos$partidos_ganados, decreasing = TRUE), ]


# ============================================================
# GRÁFICO 1: Partidos ganados por equipo
# Objetivo: comparar el rendimiento de cada equipo en el torneo
# ============================================================

# Guardamos el gráfico en la carpeta /resultados
png("resultados/grafico_partidos_ganados.png", width = 900, height = 700)

# Margen ampliado a la izquierda para que entren los nombres de los equipos
par(mar = c(5, 10, 4, 2))

barplot(
  datos_ord$partidos_ganados,
  names.arg  = datos_ord$equipo,
  horiz      = TRUE,          # Barras horizontales para mejor lectura
  col        = "#1a73e8",
  border     = "white",
  las        = 1,             # Nombres horizontales
  xlab       = "Partidos Ganados",
  main       = "Partidos Ganados por Equipo",
  cex.names  = 0.75,
  cex.main   = 1.2
)

dev.off()
cat("✔ Gráfico 1 guardado: resultados/grafico_partidos_ganados.png\n")


# ============================================================
# GRÁFICO 2: Goles totales por equipo
# Objetivo: visualizar la producción ofensiva de cada equipo
# ============================================================

datos_goles <- datos[order(datos$goles_totales, decreasing = TRUE), ]

png("resultados/grafico_goles_totales.png", width = 900, height = 700)

par(mar = c(5, 10, 4, 2))

barplot(
  datos_goles$goles_totales,
  names.arg  = datos_goles$equipo,
  horiz      = TRUE,
  col        = "#e8711a",
  border     = "white",
  las        = 1,
  xlab       = "Goles Totales",
  main       = "Goles Totales por Equipo",
  cex.names  = 0.75,
  cex.main   = 1.2
)

dev.off()
cat("✔ Gráfico 2 guardado: resultados/grafico_goles_totales.png\n")


# ============================================================
# GRÁFICO 3: Comparativa goles totales vs partidos ganados
# Objetivo: identificar si los equipos que más golean son los que más ganan
# Se usa un gráfico de dispersión (scatter plot)
# ============================================================

png("resultados/grafico_comparativa.png", width = 900, height = 700)

par(mar = c(5, 5, 4, 2))

plot(
  x    = datos$goles_totales,
  y    = datos$partidos_ganados,
  xlab = "Goles Totales",
  ylab = "Partidos Ganados",
  main = "Relación entre Goles Totales y Partidos Ganados",
  pch  = 19,           # Puntos rellenos
  col  = "#1a73e8",
  cex  = 1.3
)

# Agregar nombres de equipos al lado de cada punto para identificarlos
text(
  x      = datos$goles_totales,
  y      = datos$partidos_ganados,
  labels = datos$equipo,
  pos    = 4,          # Texto a la derecha del punto
  cex    = 0.6,
  col    = "gray30"
)

# Línea de tendencia para visualizar la correlación general
abline(lm(partidos_ganados ~ goles_totales, data = datos), col = "red", lty = 2)

dev.off()
cat("✔ Gráfico 3 guardado: resultados/grafico_comparativa.png\n")

cat("\n✔ Todos los gráficos generados correctamente en /resultados\n")
