# Que Comience el juego para aprender R con DATACAMP

# ------------------------------------- Intro to basics
3 + 4
my_numeric <- 3 + 5
my_character <- "universe"
my_logical <- FALSE

class(my_numeric)
class(my_character)
class(my_logical)

# ----------------------------------------- Vectors
numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")
boolean_vector <- c(TRUE,FALSE,TRUE)

# CASO: JUEGOS EN POKER U RULETA en Las Vegas
# -------------------------------------------

# Se guarda los registros ganancias y perdidas
# Registro de Lunes a viernes
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)

# Dar nombres a los vectores
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

total_poker <- sum(poker_vector)
total_roulette <-  sum(roulette_vector)
total_week <- total_poker + total_roulette

# Ganancia | Perdida del dia Miercoles
poker_wednesday <- poker_vector[3]

# Resultados del p�quer  dia martes, mi�rcoles y jueves
poker_midweek <- poker_vector[c(2,3,4)]
roulette_midweek<- roulette_vector[2:5]

poker_start <- poker_vector[c("Monday","Tuesday","Wednesday")]
# Promedio de los dias Lunes, Martes y Miercoles 
mean(poker_start)

# Seleccionar solo los dias que ganamos en Poker
selection_poker <- poker_vector > 0
poker_winning_days <- poker_vector[selection_poker]
poker_winning_days
