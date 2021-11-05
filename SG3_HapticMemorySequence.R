library("jsonlite")
library("dplyr")
library("tidyr")
library("tidyverse")
library("data.table")

## ------------------- U01SG3 -------------------
## copio dati da JSON
U01SG3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_03_14_13_01_U01.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU01SG3<-U01SG3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU01SG3<-U01SG3[[2]][[1]]
objectsPositionU01SG3$Utente <- "U01SG"

## creo tabella per ogni oggetto
cylinderU01SG3 <- objectsPositionU01SG3[objectsPositionU01SG3$objPosition %like% "Cylinder", ]
cylinderU01SG3$Utente <- "U01SG"
## controllo ultima posizione
U01SG3_check_cylinder <- tail(cylinderU01SG3, n = 1)

cubeU01SG3 <- objectsPositionU01SG3[objectsPositionU01SG3$objPosition %like% "Cube", ]
## controllo ultima posizione
U01SG3_check_cube <- tail(cubeU01SG3, n = 1)

sphereU01SG3 <- objectsPositionU01SG3[objectsPositionU01SG3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U01SG3_check_sphere <- tail(sphereU01SG3, n = 1)

U01SG3_check_total <- rbind(U01SG3_check_cylinder, U01SG3_check_cube, U01SG3_check_sphere)


## ------------------- U02SG3 -------------------
## copio dati da JSON
U02SG3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_03_15_12_01_U02.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU02SG3<-U02SG3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU02SG3<-U02SG3[[2]][[1]]
objectsPositionU02SG3$Utente <- "U02SG"

## creo tabella per ogni oggetto
cylinderU02SG3 <- objectsPositionU02SG3[objectsPositionU02SG3$objPosition %like% "Cylinder", ]
cylinderU02SG3$Utente <- "U02SG"
## controllo ultima posizione
U02SG3_check_cylinder <- tail(cylinderU02SG3, n = 1)

cubeU02SG3 <- objectsPositionU02SG3[objectsPositionU02SG3$objPosition %like% "Cube", ]
cubeU02SG3$Utente <- "U02SG"
## controllo ultima posizione
U02SG3_check_cube <- tail(cubeU02SG3, n = 1)

sphereU02SG3 <- objectsPositionU02SG3[objectsPositionU02SG3$objPosition %like% "Sphere", ]
sphereU02SG3$Utente <- "U02SG"
## controllo ultima posizione
U02SG3_check_sphere <- tail(sphereU02SG3, n = 1)

U02SG3_check_total <- rbind(U02SG3_check_cylinder, U02SG3_check_cube, U02SG3_check_sphere)


## ------------------- U03SG3 -------------------
## copio dati da JSON
U03SG3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_03_16_18_36_U03.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU03SG3<-U03SG3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU03SG3<-U03SG3[[2]][[1]]
objectsPositionU03SG3$Utente <- "U03SG"

## creo tabella per ogni oggetto
cylinderU03SG3 <- objectsPositionU03SG3[objectsPositionU03SG3$objPosition %like% "Cylinder", ]
cylinderU03SG3$Utente <- "U03SG"
## controllo ultima posizione
U03SG3_check_cylinder <- tail(cylinderU03SG3, n = 1)

cubeU03SG3 <- objectsPositionU03SG3[objectsPositionU03SG3$objPosition %like% "Cube", ]
cubeU03SG3$Utente <- "U03SG"
## controllo ultima posizione
U03SG3_check_cube <- tail(cubeU03SG3, n = 1)

sphereU03SG3 <- objectsPositionU03SG3[objectsPositionU03SG3$objPosition %like% "Sphere", ]
sphereU03SG3$Utente <- "U03SG"
## controllo ultima posizione
U03SG3_check_sphere <- tail(sphereU03SG3, n = 1)

U03SG3_check_total <- rbind(U03SG3_check_cylinder, U03SG3_check_cube, U03SG3_check_sphere)


## ------------------- U04SG3 -------------------
## copio dati da JSON
U04SG3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_04_09_50_53_U04.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU04SG3<-U04SG3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU04SG3<-U04SG3[[2]][[1]]
objectsPositionU04SG3$Utente <- "U04SG"

## creo tabella per ogni oggetto
cylinderU04SG3 <- objectsPositionU04SG3[objectsPositionU04SG3$objPosition %like% "Cylinder", ]
cylinderU04SG3$Utente <- "U04SG"
## controllo ultima posizione
U04SG3_check_cylinder <- tail(cylinderU04SG3, n = 1)

cubeU04SG3 <- objectsPositionU04SG3[objectsPositionU04SG3$objPosition %like% "Cube", ]
## controllo ultima posizione
U04SG3_check_cube <- tail(cubeU04SG3, n = 1)

sphereU04SG3 <- objectsPositionU04SG3[objectsPositionU04SG3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U04SG3_check_sphere <- tail(sphereU04SG3, n = 1)

U04SG3_check_total <- rbind(U04SG3_check_cylinder, U04SG3_check_cube, U04SG3_check_sphere)


## ------------------- U05SG3 -------------------
## copio dati da JSON
U05SG3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_04_10_43_38_U05.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU05SG3<-U05SG3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU05SG3<-U05SG3[[2]][[1]]
objectsPositionU05SG3$Utente <- "U05SG"

## creo tabella per ogni oggetto
cylinderU05SG3 <- objectsPositionU05SG3[objectsPositionU05SG3$objPosition %like% "Cylinder", ]
cylinderU05SG3$Utente <- "U05SG"
## controllo ultima posizione
U05SG3_check_cylinder <- tail(cylinderU05SG3, n = 1)

cubeU05SG3 <- objectsPositionU05SG3[objectsPositionU05SG3$objPosition %like% "Cube", ]
## controllo ultima posizione
U05SG3_check_cube <- tail(cubeU05SG3, n = 1)

sphereU05SG3 <- objectsPositionU05SG3[objectsPositionU05SG3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U05SG3_check_sphere <- tail(sphereU05SG3, n = 1)

U05SG3_check_total <- rbind(U05SG3_check_cylinder, U05SG3_check_cube, U05SG3_check_sphere)


## ------------------- U06SG3 -------------------
## copio dati da JSON
U06SG3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_04_11_18_54_U06.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU06SG3<-U06SG3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU06SG3<-U06SG3[[2]][[1]]
objectsPositionU06SG3$Utente <- "U06SG"

## creo tabella per ogni oggetto
cylinderU06SG3 <- objectsPositionU06SG3[objectsPositionU06SG3$objPosition %like% "Cylinder", ]
cylinderU06SG3$Utente <- "U06SG"
## controllo ultima posizione
U06SG3_check_cylinder <- tail(cylinderU06SG3, n = 1)

cubeU06SG3 <- objectsPositionU06SG3[objectsPositionU06SG3$objPosition %like% "Cube", ]
## controllo ultima posizione
U06SG3_check_cube <- tail(cubeU06SG3, n = 1)

sphereU06SG3 <- objectsPositionU06SG3[objectsPositionU06SG3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U06SG3_check_sphere <- tail(sphereU06SG3, n = 1)

U06SG3_check_total <- rbind(U06SG3_check_cylinder, U06SG3_check_cube, U06SG3_check_sphere)


## ------------------- U07SG3 -------------------
## copio dati da JSON
U07SG3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_04_14_31_16_U07.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU07SG3<-U07SG3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU07SG3<-U07SG3[[2]][[1]]
objectsPositionU07SG3$Utente <- "U07SG"

## creo tabella per ogni oggetto
cylinderU07SG3 <- objectsPositionU07SG3[objectsPositionU07SG3$objPosition %like% "Cylinder", ]
cylinderU07SG3$Utente <- "U07SG"
## controllo ultima posizione
U07SG3_check_cylinder <- tail(cylinderU07SG3, n = 1)

cubeU07SG3 <- objectsPositionU07SG3[objectsPositionU07SG3$objPosition %like% "Cube", ]
## controllo ultima posizione
U07SG3_check_cube <- tail(cubeU07SG3, n = 1)

sphereU07SG3 <- objectsPositionU07SG3[objectsPositionU07SG3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U07SG3_check_sphere <- tail(sphereU07SG3, n = 1)

U07SG3_check_total <- rbind(U07SG3_check_cylinder, U07SG3_check_cube, U07SG3_check_sphere)


## ------------------- U08SG3 -------------------
## copio dati da JSON
U08SG3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_04_15_23_42_U08.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU08SG3<-U08SG3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU08SG3<-U08SG3[[2]][[1]]
objectsPositionU08SG3$Utente <- "U08SG"

## creo tabella per ogni oggetto
cylinderU08SG3 <- objectsPositionU08SG3[objectsPositionU08SG3$objPosition %like% "Cylinder", ]
cylinderU08SG3$Utente <- "U08SG"
## controllo ultima posizione
U08SG3_check_cylinder <- tail(cylinderU08SG3, n = 1)

cubeU08SG3 <- objectsPositionU08SG3[objectsPositionU08SG3$objPosition %like% "Cube", ]
## controllo ultima posizione
U08SG3_check_cube <- tail(cubeU08SG3, n = 1)

sphereU08SG3 <- objectsPositionU08SG3[objectsPositionU08SG3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U08SG3_check_sphere <- tail(sphereU08SG3, n = 1)

U08SG3_check_total <- rbind(U08SG3_check_cylinder, U08SG3_check_cube, U08SG3_check_sphere)


## ------------------- U09SG3 -------------------
## copio dati da JSON
U09SG3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_04_16_35_25_U09.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU09SG3<-U09SG3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU09SG3<-U09SG3[[2]][[1]]
objectsPositionU09SG3$Utente <- "U09SG"

## creo tabella per ogni oggetto
cylinderU09SG3 <- objectsPositionU09SG3[objectsPositionU09SG3$objPosition %like% "Cylinder", ]
cylinderU09SG3$Utente <- "U09SG"
## controllo ultima posizione
U09SG3_check_cylinder <- tail(cylinderU09SG3, n = 1)

cubeU09SG3 <- objectsPositionU09SG3[objectsPositionU09SG3$objPosition %like% "Cube", ]
## controllo ultima posizione
U09SG3_check_cube <- tail(cubeU09SG3, n = 1)

sphereU09SG3 <- objectsPositionU09SG3[objectsPositionU09SG3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U09SG3_check_sphere <- tail(sphereU09SG3, n = 1)

U09SG3_check_total <- rbind(U09SG3_check_cylinder, U09SG3_check_cube, U09SG3_check_sphere)


## ------------------- U10SG3 -------------------
## copio dati da JSON
U10SG3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_05_09_37_17_U10.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU10SG3<-U10SG3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU10SG3<-U10SG3[[2]][[1]]
objectsPositionU10SG3$Utente <- "U10SG"

## creo tabella per ogni oggetto
cylinderU10SG3 <- objectsPositionU10SG3[objectsPositionU10SG3$objPosition %like% "Cylinder", ]
cylinderU10SG3$Utente <- "U10SG"
## controllo ultima posizione
U10SG3_check_cylinder <- tail(cylinderU10SG3, n = 1)

cubeU10SG3 <- objectsPositionU10SG3[objectsPositionU10SG3$objPosition %like% "Cube", ]
## controllo ultima posizione
U10SG3_check_cube <- tail(cubeU10SG3, n = 1)

sphereU10SG3 <- objectsPositionU10SG3[objectsPositionU10SG3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U10SG3_check_sphere <- tail(sphereU10SG3, n = 1)

U10SG3_check_total <- rbind(U10SG3_check_cylinder, U10SG3_check_cube, U10SG3_check_sphere)


## ------------------- U11SG3 -------------------
## copio dati da JSON
U11SG3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_05_11_12_04_U11.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU11SG3<-U11SG3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU11SG3<-U11SG3[[2]][[1]]
objectsPositionU11SG3$Utente <- "U11SG"

## creo tabella per ogni oggetto
cylinderU11SG3 <- objectsPositionU11SG3[objectsPositionU11SG3$objPosition %like% "Cylinder", ]
cylinderU11SG3$Utente <- "U11SG"
## controllo ultima posizione
U11SG3_check_cylinder <- tail(cylinderU11SG3, n = 1)

cubeU11SG3 <- objectsPositionU11SG3[objectsPositionU11SG3$objPosition %like% "Cube", ]
## controllo ultima posizione
U11SG3_check_cube <- tail(cubeU11SG3, n = 1)

sphereU11SG3 <- objectsPositionU11SG3[objectsPositionU11SG3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U11SG3_check_sphere <- tail(sphereU11SG3, n = 1)

U11SG3_check_total <- rbind(U11SG3_check_cylinder, U11SG3_check_cube, U11SG3_check_sphere)


## ------------------- U12SG3 -------------------
## copio dati da JSON
U12SG3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_05_11_38_07_U12.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU12SG3<-U12SG3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU12SG3<-U12SG3[[2]][[1]]
objectsPositionU12SG3$Utente <- "U12SG"

## creo tabella per ogni oggetto
cylinderU12SG3 <- objectsPositionU12SG3[objectsPositionU12SG3$objPosition %like% "Cylinder", ]
cylinderU12SG3$Utente <- "U12SG"
## controllo ultima posizione
U12SG3_check_cylinder <- tail(cylinderU12SG3, n = 1)

cubeU12SG3 <- objectsPositionU12SG3[objectsPositionU12SG3$objPosition %like% "Cube", ]
## controllo ultima posizione
U12SG3_check_cube <- tail(cubeU12SG3, n = 1)

sphereU12SG3 <- objectsPositionU12SG3[objectsPositionU12SG3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U12SG3_check_sphere <- tail(sphereU12SG3, n = 1)

U12SG3_check_total <- rbind(U12SG3_check_cylinder, U12SG3_check_cube, U12SG3_check_sphere)





## tabella finale
SG3 <- rbind(U01SG3_check_total, U02SG3_check_total, U03SG3_check_total,
             U04SG3_check_total, U05SG3_check_total, U06SG3_check_total,
             U07SG3_check_total, U08SG3_check_total, U09SG3_check_total,
             U10SG3_check_total, U11SG3_check_total, U12SG3_check_total)
