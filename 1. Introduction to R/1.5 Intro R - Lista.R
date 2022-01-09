# ----------------------------------------- LISTAS
# Vectors (one dimensional array) <> Todos los elementos tienen el mismo tipo
# Matrices (two dimensional array) <> Todos los elementos tienen el mismo tipo
# Data frames (two-dimensional objects) <>
#  Dentro de una columna,mismo tipo de datos
#  Diferentes columnas pueden ser de diferente tipo de datos

# Lista
# Permite reunir una variedad de objetos bajo un nombre
my_vector <- 1:10 
my_matrix <- matrix(1:9, ncol = 3)
my_df <- mtcars[1:10,]

# Construya una lista con diferentes elementos
my_list <- list(my_vector,my_matrix,my_df)
names(my_list) <- c("vec", "mat","df")

my_list

# Imprime el segundo elemento del vector
my_list[[2]][2]


# EJEMPLO DE UNA LISTA
movie_title <- "The Departed"
movie_actors <- c("Leonardo DiCaprio","Matt Damon","Jack Nicholson","Mark Wahlberg",
                 "Vera Farmiga","Martin Sheen")
scores <- c(4.6, 5, 4.8, 5, 4.2)
comments <- c("I would watch it again", "Amazing!", "I liked it",
              "One of the best movies", "Fascinating plot") 

avg_review <- mean(scores)
reviews_df <- data.frame(scores,comments)

departed_list = list(movie_title,movie_actors,reviews_df,avg_review)
departed_list

# ¡Buen trabajo! Creó lista de información de películas 
# Combinó diferentes componentes en una sola lista.