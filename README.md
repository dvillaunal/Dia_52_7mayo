__Protocolo:__

+ Daniel Felipe Villa Rengifo

+ Lenguaje: R 

+ Tema: Manejo de Factors en R

+ Fuentes:
  
  1. [EDUCBA](https://www.educba.com/factors-in-r/)
  
  2. [DataCamp](https://www.datacamp.com/community/tutorials/factors-in-r)
  
# Factores en R

Un factor es una estructura de datos utilizada para campos que sólo toman un número finito y predefinido de valores (datos categóricos). Por ejemplo: un campo de datos como el estado civil puede contener sólo valores de soltero, casado, separado, divorciado o viudo.

En este caso, conocemos los posibles valores de antemano y estos valores predefinidos y distintos se denominan `levels`.


Podemos comprobar si una variable es un factor o no utilizando la función `class()`.

Del mismo modo, los niveles de un factor se pueden comprobar utilizando la función `levels()`.

# ¿Cómo crear un factor?

Podemos crear un factor utilizando la función `factor()`. Los niveles de un factor se infieren de los datos si no se proporcionan.

```{r}
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
```

Podemos ver en el ejemplo anterior que los niveles pueden estar predefinidos aunque no se utilicen.

Los factores están estrechamente relacionados con los vectores. De hecho, los factores se almacenan como vectores enteros. Esto se ve claramente en su estructura.

```{r}
## Miremos el genero de una persona:
message("\n## Miremos el genero de una persona:")

gener <- factor(c("Hombre", "Mujer", "No Definido", "Trans", "Binario"))

cat("gener <- factor(c(\"Hombre\", \"Mujer\", \"No Definido\", \"Trans\", \"Binario\"))", "\n \nOUTPUT:\n")
print(gener)

# Ahora vamos observar su estructura:
message("\n# Ahora vamos observar su estructura:")

cat("str(gener)", "\n \nOUTPUT:\n")
print(str(gener))

```


Vemos que los niveles se almacenan en un vector de caracteres y los elementos individuales se almacenan en realidad como índices.

Los factores también se crean cuando leemos columnas no numéricas en un Data Frame.

> __NOTA:__ Por defecto, la función `data.frame()` convierte el vector de caracteres en factor. Para suprimir este comportamiento, debemos pasar el argumento `stringsAsFactors = FALSE`.

# ¿Cómo acceder a los componentes de un factor?

El acceso a los componentes de un factor es muy similar al de los vectores.

```{r}
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
```

# ¿Cómo se modifica un factor?

Los componentes de un factor pueden modificarse mediante simples asignaciones. Sin embargo, no podemos elegir valores fuera de sus niveles predefinidos.


```{r}
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
```


__Una solución a esto es añadir el valor al nivel primero.__

```{r}
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
```