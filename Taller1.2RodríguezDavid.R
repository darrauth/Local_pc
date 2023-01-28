#....................... EJERCICIO 1 .............................................................

#Para crear un vector llamado datos con los primeros 20 números naturales en R, se puede utilizar el comando:

datos <- 1:20

#Para hallar el valor que se encuentra en el séptimo lugar de datos, se puede utilizar el comando:
datos[7]

#Para hallar los primeros diez números de datos, se puede utilizar el comando:
datos[1:10]

#Para hallar los números de la sucesión de Fibonacci que se encuentran en datos, se puede utilizar el comando:

# Crear un vector con los primeros 20 números naturales
datos <- 1:20

# Crear una función para calcular los números de la sucesión de Fibonacci para un rango dado
fibonacci <- function(n) {
  fib <- numeric(n)
  fib[1] <- 0
  fib[2] <- 1
  for (i in 3:n) {
    fib[i] <- fib[i-1] + fib[i-2]
  }
  return(fib)
}

# Calcular los números de la sucesión de Fibonacci con un rango de 20
fibonacci_20 <- fibonacci(20)
fibonacci_20
# Halle los números de la sucesión de fibonacci con un rango de 20 y que se encuentran en datos
fibonacci_20[fibonacci_20 %in% datos]


#Los 20 elementos de datos pero ordenados de mayor a menor:

sort(datos, decreasing = TRUE)

#Guarde en una variable llamada muestra una muestra aletoria simple de 9 elementos del vector datos.


muestra <- sample(datos, 9)

#Organice muestra en una matriz de 3x3 y guárdela en un objeto llamado MAT.

MAT <- matrix(muestra, nrow = 3, ncol = 3)

#Halle el elemento de MAT que se encuentra en la fila 2 y la columna 3.

MAT[2,3]

#Halle la columna 2 de MAT.

MAT[,2]

#Halle la fila 3 de MAT.
MAT[3,]

#Calcule la raiz cuadrada de todos los elementos de MAT.
sqrt(MAT)

#................................. EJERCICIO 2 ....................................................


#Copie el siguiente código en su script:

# Millas por galón
millaspg <- mtcars$mpg

# Número de cilindros
cil <- mtcars$cyl

# Motor donde 0 es "v-shaped" y 1 es "straight"
mot <- mtcars$vs 

# Transmisión donde 0 es "automático" y 1 es "manual"
trans <- mtcars$am


#1. En el código anterior se está utilizando el conjunto de datos 
#"mtcars" que ya existe en R. El signo $ se utiliza para acceder a una columna 
#específica de un conjunto de datos, en este caso se están asignando las columnas 
#"mpg", "cyl", "vs" y "am" a las variables "millaspg", "cil", "mot" y "trans" respectivamente.

#2. Para reescribir las variables mot y trans como factores (variables categóricas):

mot <- as.factor(mtcars$vs)
trans <- as.factor(mtcars$am)

#3. Para renombrar los niveles de las variables categóricas:

levels(mot) <- c("v-shaped", "straight")
levels(trans) <- c("automatico", "manual")

#4. Para hacer una tabla de frecuencia para estas dos variables categóricas:

table(mot)
table(trans)

#5.Para crear un data frame con las cuatro variables llamado carros:

carros <- data.frame(millaspg, cil, mot, trans)

#6.Para hallar la dimensión de su data frame:

dim(carros)

#7.Para hallar el resumen estadístico de su data frame:

summary(carros)


#8.Describa qué está presentando el diagrama que se obtiene a continuación:
boxplot(mtcars$mpg~mtcars$am)

#El código anterior crea un diagrama de caja (boxplot) para representar 
#la relación entre las variables "mpg" (millas por galón) y 
#"am" (transmisión automática o manual) en el conjunto de datos "mtcars".
#El uso del operador "~" indica que se está creando un gráfico de caja por grupo, 
#en este caso, separando los valores de "mpg" por los diferentes valores de "am".
#El gráfico de caja muestra la distribución de los datos mediante la 
#representación de los cuartiles (primer cuartil, segundo cuartil o mediana,
#tercer cuartil) y los valores atípicos (valores fuera de los límites de la caja). 
#La caja representa el rango intercuartílico (la diferencia entre el tercer y el primer cuartil), 
#mientras que las rayas horizontales (whiskers) indican los límites mínimo y 
#máximo de los datos, excluyendo los valores atípicos.

#En este caso, el diagrama de caja permite comparar la distribución de 
#la variable "mpg" para los valores de "am" 0 (transmisión automática) y 1 
#(transmisión manual). Se puede ver que en promedio, los vehículos con transmisión manual
#tienen una mayor eficiencia en millas por galón (mpg) que los vehículos con 
#transmisión automática, aunque también presentan una mayor variabilidad en 
#sus valores de mpg.



#9.Modifique el código del punto 8 utilizando su data frame carros

#Para modificar el código del punto 8 utilizando el data frame carros, 
#se debe reemplazar "mtcars" con "carros" en el código. Por ejemplo:

boxplot(carros$millaspg~carros$trans)

#10. Explore el comando boxplot llamando la ayuda con ?boxplot e identifique 
#cómo puede cambiar los nombres de los ejes para que pueda cambiarlos por 
#nombres legibles para cualquier lector.


#Para cambiar los nombres de los ejes en el comando boxplot, 
#se puede utilizar las opciones "xlab" y "ylab" dentro del comando. 
#Por ejemplo, para cambiar el nombre del eje x por "Tipo de transmisión" y
#el eje y por "Millas por galón", el código sería:

boxplot(carros$millaspg~carros$trans, xlab="Tipo de transmisión", ylab="Millas por galón")

#Además de esto, se puede utilizar la opción "main" para 
#cambiar el título del gráfico y "names" para cambiar los nombres de las variables en el eje x.

