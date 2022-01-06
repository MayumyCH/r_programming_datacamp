# ----------------------------------------- Matrices

# Caso de Estudio
# Analizar los #s de taquilla de las películas de Star Wars
# May the force be with you! || May the force be with you!

# byrow = TRUE <> Matriz llena de filas
# nrow = 3 <>  3 filas
matrix(1:9, byrow = TRUE, nrow = 3)


# Cifras de taquilla de la franquicia Star Wars
# 3 peliculas de Star Wars (¡en millones!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

box_office <- c(new_hope, empire_strikes, return_jedi)
star_wars_matrix <- matrix(box_office, byrow = TRUE, nrow = 3)

region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Agregando nombre columna y filas
colnames(star_wars_matrix) <- region
rownames(star_wars_matrix) <- titles
star_wars_matrix

# Otra forma de poner nombres a las columnas y filas
star_wars_matrix <- matrix(box_office, 
                           nrow = 3, byrow = TRUE,
                           dimnames = list(titles, region))

# Cifras de taquilla mundial de las tres películas
worldwide_vector <- rowSums(star_wars_matrix)

# Agregar una columna
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
all_wars_matrix


# Construct star_wars_matrix
box_office2 <- c(474.5, 552.5, 310.7, 338.7, 380.3, 468.5)
titles2 <- c("The Phantom Menace", 
            "Attack of the Clones", 
            "Revenge of the Sith")

star_wars_matrix2 <- matrix(box_office2, 
                           nrow = 3, byrow = TRUE,
                           dimnames = list(titles2, region))
star_wars_matrix2

# Combina ambas trilogías de Star Wars en una matriz
all_wars_matrix <- rbind(star_wars_matrix,star_wars_matrix2)
all_wars_matrix

total_revenue_vector <- colSums(all_wars_matrix)
total_revenue_vector


# Ingresos fuera de EE. UU. Para todas las películas
non_us_all <- all_wars_matrix[,2]

# Ingresos promedio fuera de los EE. UU
mean(non_us_all)

# Ingresos fuera de EE. UU. Para las dos primeras películas
non_us_some <- all_wars_matrix[1:2,2]

# Ingresos promedio fuera de EE. UU. para las dos primeras películas
mean(non_us_some)

# Si el precio de un boleto es de 5 dólares 
#   obtener la cantidad de visitantes.
visitors <- all_wars_matrix/5
visitors

# Interpretación
# 92 millones de personas fueron a ver A New Hope en los cines de EE. UU.

# Nro promedio de visitantes de EE. UU.
mean(visitors[,1])