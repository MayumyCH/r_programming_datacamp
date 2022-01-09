# ----------------------------------------- Factor

# Tipo de datos estadísticos que almacenan variables categóricas.
# Nivel de factor <> # categorias que existen

# Hay dos tipos de variables categóricas: 
# --> Variable categórica nominal (sin un orden implícito)
# --> Variable categórica ordinal (tienen un orden natural)

# Animals
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# Temperature
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, 
                                    order = TRUE, 
                                    levels = c("Low", "Medium", "High"))
factor_temperature_vector

## NIVELES DE FACTOR
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <-c("Female", "Male")

summary(survey_vector)
summary(factor_survey_vector)


