"__Protocolo:__

+ Daniel Felipe Villa Rengifo

+ Lenguaje: R 

+ Tema: Manejo de Factors en R

+ Fuentes:
  
  1. [EDUCBA](https://www.educba.com/factors-in-r/)
  
  2. [DataCamp](https://www.datacamp.com/community/tutorials/factors-in-r)"


## -----------------------------------------------------------------------------------------------------------------
# Vamos a definir el estado civil de alguien:
message("\n# Vamos a definir el estado civil de alguien:")

Estado_Civil <- factor(c("Soltero", "Casado", "Divorciado", "Casado"))

cat("\nEstado_Civil <- factor(c(\"Soltero\", \"Casado\", \"Divorciado\", \"Casado\"))", "\n \nOUTPUT:\n")
print(Estado_Civil)

# Ahora hagamos un factor con todos los estaddos civiles en colombia:
message("\n# Ahora hagamos un factor con todos los estaddos civiles en colombia:")

Estado_Civil <- factor(c("Solter@", "Casad@", "Divorciad@", "Casad@"), levels = c("Solter@", "Casad@", "Divorciad@", "Viud@", "Unión Libre"))

cat("\nEstado_Civil <- factor(c(\"Soltero\", \"Casado\", \"Divorciado\", \"Casado\"),
levels = c(\"Solter@\", \"Casad@\", \"Divorciad@\", \"Viud@\", \"Unión Libre\"))", "\n \nOUTPUT:\n")
print(Estado_Civil)


## -----------------------------------------------------------------------------------------------------------------
## Miremos el genero de una persona:
message("\n## Miremos el genero de una persona:")

gener <- factor(c("Hombre", "Mujer", "No Definido", "Trans", "Binario"))

cat("gener <- factor(c(\"Hombre\", \"Mujer\", \"No Definido\", \"Trans\", \"Binario\"))", "\n \nOUTPUT:\n")
print(gener)

# Ahora vamos observar su estructura:
message("\n# Ahora vamos observar su estructura:")

cat("str(gener)", "\n \nOUTPUT:\n")
print(str(gener))



## -----------------------------------------------------------------------------------------------------------------
# tomamos el factor anterior:
message("# tomamos el factor anterior:")

cat("\n> Estado_Civil\n \n")
print(Estado_Civil)

# Accediendo al 3er elemento:
cat("\n# Accediendo al 3er elemento:", "\n \n> Estado_Civil[3]", "\n \nOUTPUT:\n")

print(Estado_Civil[3])

# Accediendo al 2do y 4to elemento:
cat("\n# Accediendo al 2do y 4to elemento:", "\n \n> Estado_Civil[c(2,4)]", "\n \nOUTPUT:\n")

print(Estado_Civil[c(2,4)])


# Accediendo a todos los elementos menos el 1ro:
cat("\n# Accediendo a todos los elementos menos el 1ro:", "\n \n> Estado_Civil[-1]", "\n \nOUTPUT:\n")

print(Estado_Civil[-1])

# Usando vectores logicos:
cat("\n# Usando vectores logicos:", "\n \n> Estado_Civil[c(T,F,T,F)]", "\n \nOUTPUT:\n")

print(Estado_Civil[c(T,F,T,F)])


## -----------------------------------------------------------------------------------------------------------------
# Tomando el factor de genero:
message("\n# Tomando el factor de genero:")
print(gener)

## Modifiquemos el segundo elemento:
message("\n## Modifiquemos el segundo elemento:")

cat("gener[3] <- \"Mujer\"", "\n \nOUTPUT:\n")
gener[3] <- "Mujer"
print(gener)

# no se pueden asignar valores fuera de los niveles:
message("\n# no se pueden asignar valores fuera de los niveles:\n")
gener[5] <- "Otro"
cat("gener[5] <- \"Otro\"", "\n \nOUTPUT:\n")
print(gener[5])


## -----------------------------------------------------------------------------------------------------------------
# Una solución a esto es añadir el valor al nivel primero:
message("\n# Una solución a esto es añadir el valor al nivel primero:\n")

## Añadir un nuevo level:
message("\n## Añadir un nuevo level:")

levels(gener) <- c(levels(gener), "Otro")
cat("levels(gener) <- c(levels(gener), \"Otro\")", "\n \nOUTPUT:\n")
print(levels(gener))

## AHora cambiamos otro por "No Definido":
message("\n## AHora cambiamos otro por \"No Definido\":\n")
gener[5] <- "Otro"
cat("gener[5] <- \"Otro\"", "\n \nOUTPUT:\n")
print(gener)

cat("\n----------------------------------------\n","\n--------> El error se debe a que en el ejemplo pasado, se destaca la idea que antes de añadir nuevos elementos al fator se debe crear nuevos niveles con anterioridad <--------\n \n", "\n----------------------------------------\n")