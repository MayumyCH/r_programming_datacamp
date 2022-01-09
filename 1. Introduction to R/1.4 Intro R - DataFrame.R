# ----------------------------------------- DATAFRAME
# Un dataframe tiene las variables de un conjunto de datos 
# Columnas y las observaciones como filas

temp <- c(20.37, 18.56, 18.4, 21.96, 29.53, 28.16,
          36.38, 36.62, 40.03, 27.59, 22.15, 19.85)
humedad <- c(88, 86, 81, 79, 80, 78,
             71, 69, 78, 82, 85, 83)
precipitaciones <- c(72, 33.9, 37.5, 36.6, 31.0, 16.6,
                     1.2, 6.8, 36.8, 30.8, 38.5, 22.7)
mes <- c("enero", "febrero", "marzo", "abril", "mayo", "junio",
         "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre")


# Creacion de un dataframe
datos <- data.frame(mes = mes, temperatura = temp, humedad = humedad,
                    precipitaciones = precipitaciones)

names(datos) # Nombres de las variables (columnas)

head(datos) # Los 1ros 6 elementos
tail(datos) # Los ultimos 6 elementos


# Descripcion general completa del significado de las variables
str(datos) 

# Definition of vectors
name <- c("Mercury", "Venus", "Earth", 
          "Mars", "Jupiter", "Saturn", 
          "Uranus", "Neptune")
type <- c("Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", 
          "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 
              11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 
              0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <-data.frame(name,type,diameter,rotation,rings)
str(planets_df)

# Imprima el diámetro de Mercurio (fila 1, columna 3)
planets_df[1,3]

# Imprimir datos para Marte (cuarta fila completa)
planets_df[4,]

planets_df[1:3,2:4]
planets_df[1:5,"diameter"]

# NOTA 
# planets_df[,3] <> planets_df[,"diameter"] <> planets_df$diameter
rings_vector <- planets_df$rings
rings_vector

# Seleccione todas las columnas para planetas con anillos
planets_df[rings_vector, ]

# subset() 
# El 1er argumenta especifica el conjunto de datos para el que desea un subconjunto. 
# Al agregar el segundo argumento, le da la información y las condiciones necesarias
subset(planets_df, subset = rings)
subset(planets_df, subset = planets_df$diameter < 1)

# order() es una función que le da la posición clasificada de cada elemento
a <- c(100, 10, 1000)
order(a) #[1] 2 1 3
a[order(a)]

positions <-  order(planets_df$diameter)
planets_df[positions,]






