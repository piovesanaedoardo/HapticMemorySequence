library("jsonlite")
library("dplyr")
library("tidyr")
library("tidyverse")
library("data.table")
library("xlsx")
library("readxl")

## ------------------- U01CV3 -------------------
## copio dati da JSON
U01CV3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_03_13_59_40_U01.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU01CV3<-U01CV3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU01CV3<-U01CV3[[2]][[1]]
objectsPositionU01CV3$Utente <- "U01CV"

## creo tabella per ogni oggetto
cylinderU01CV3 <- objectsPositionU01CV3[objectsPositionU01CV3$objPosition %like% "Cylinder", ]
cylinderU01CV3$Utente <- "U01CV"
## controllo ultima posizione
U01CV3_check_cylinder <- tail(cylinderU01CV3, n = 1)

cubeU01CV3 <- objectsPositionU01CV3[objectsPositionU01CV3$objPosition %like% "Cube", ]
## controllo ultima posizione
U01CV3_check_cube <- tail(cubeU01CV3, n = 1)

sphereU01CV3 <- objectsPositionU01CV3[objectsPositionU01CV3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U01CV3_check_sphere <- tail(sphereU01CV3, n = 1)

U01CV3_check_total <- rbind(U01CV3_check_cylinder, U01CV3_check_cube, U01CV3_check_sphere)


## ------------------- U02CV3 -------------------
## copio dati da JSON
U02CV3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_03_15_29_10_U02.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU02CV3<-U02CV3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU02CV3<-U02CV3[[2]][[1]]
objectsPositionU02CV3$Utente <- "U02CV"

## creo tabella per ogni oggetto
cylinderU02CV3 <- objectsPositionU02CV3[objectsPositionU02CV3$objPosition %like% "Cylinder", ]
cylinderU02CV3$Utente <- "U02CV"
## controllo ultima posizione
U02CV3_check_cylinder <- tail(cylinderU02CV3, n = 1)

cubeU02CV3 <- objectsPositionU02CV3[objectsPositionU02CV3$objPosition %like% "Cube", ]
cubeU02CV3$Utente <- "U02CV"
## controllo ultima posizione
U02CV3_check_cube <- tail(cubeU02CV3, n = 1)

sphereU02CV3 <- objectsPositionU02CV3[objectsPositionU02CV3$objPosition %like% "Sphere", ]
sphereU02CV3$Utente <- "U02CV"
## controllo ultima posizione
U02CV3_check_sphere <- tail(sphereU02CV3, n = 1)

U02CV3_check_total <- rbind(U02CV3_check_cylinder, U02CV3_check_cube, U02CV3_check_sphere)


## ------------------- U03CV3 -------------------
## copio dati da JSON
U03CV3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_03_16_04_50_U03.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU03CV3<-U03CV3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU03CV3<-U03CV3[[2]][[1]]
objectsPositionU03CV3$Utente <- "U03CV"

## creo tabella per ogni oggetto
cylinderU03CV3 <- objectsPositionU03CV3[objectsPositionU03CV3$objPosition %like% "Cylinder", ]
cylinderU03CV3$Utente <- "U03CV"
## controllo ultima posizione
U03CV3_check_cylinder <- tail(cylinderU03CV3, n = 1)

cubeU03CV3 <- objectsPositionU03CV3[objectsPositionU03CV3$objPosition %like% "Cube", ]
cubeU03CV3$Utente <- "U03CV"
## controllo ultima posizione
U03CV3_check_cube <- tail(cubeU03CV3, n = 1)

sphereU03CV3 <- objectsPositionU03CV3[objectsPositionU03CV3$objPosition %like% "Sphere", ]
sphereU03CV3$Utente <- "U03CV"
## controllo ultima posizione
U03CV3_check_sphere <- tail(sphereU03CV3, n = 1)

U03CV3_check_total <- rbind(U03CV3_check_cylinder, U03CV3_check_cube, U03CV3_check_sphere)


## ------------------- U04CV3 -------------------
## copio dati da JSON
U04CV3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_04_09_33_26_U04.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU04CV3<-U04CV3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU04CV3<-U04CV3[[2]][[1]]
objectsPositionU04CV3$Utente <- "U04CV"

## creo tabella per ogni oggetto
cylinderU04CV3 <- objectsPositionU04CV3[objectsPositionU04CV3$objPosition %like% "Cylinder", ]
cylinderU04CV3$Utente <- "U04CV"
## controllo ultima posizione
U04CV3_check_cylinder <- tail(cylinderU04CV3, n = 1)

cubeU04CV3 <- objectsPositionU04CV3[objectsPositionU04CV3$objPosition %like% "Cube", ]
## controllo ultima posizione
U04CV3_check_cube <- tail(cubeU04CV3, n = 1)

sphereU04CV3 <- objectsPositionU04CV3[objectsPositionU04CV3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U04CV3_check_sphere <- tail(sphereU04CV3, n = 1)

U04CV3_check_total <- rbind(U04CV3_check_cylinder, U04CV3_check_cube, U04CV3_check_sphere)


## ------------------- U05CV3 -------------------
## copio dati da JSON
U05CV3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_04_10_32_15_U05.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU05CV3<-U05CV3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU05CV3<-U05CV3[[2]][[1]]
objectsPositionU05CV3$Utente <- "U05CV"

## creo tabella per ogni oggetto
cylinderU05CV3 <- objectsPositionU05CV3[objectsPositionU05CV3$objPosition %like% "Cylinder", ]
cylinderU05CV3$Utente <- "U05CV"
## controllo ultima posizione
U05CV3_check_cylinder <- tail(cylinderU05CV3, n = 1)

cubeU05CV3 <- objectsPositionU05CV3[objectsPositionU05CV3$objPosition %like% "Cube", ]
## controllo ultima posizione
U05CV3_check_cube <- tail(cubeU05CV3, n = 1)

sphereU05CV3 <- objectsPositionU05CV3[objectsPositionU05CV3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U05CV3_check_sphere <- tail(sphereU05CV3, n = 1)

U05CV3_check_total <- rbind(U05CV3_check_cylinder, U05CV3_check_cube, U05CV3_check_sphere)


## ------------------- U06CV3 -------------------
## copio dati da JSON
U06CV3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_04_11_31_59_U06.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU06CV3<-U06CV3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU06CV3<-U06CV3[[2]][[1]]
objectsPositionU06CV3$Utente <- "U06CV"

## creo tabella per ogni oggetto
cylinderU06CV3 <- objectsPositionU06CV3[objectsPositionU06CV3$objPosition %like% "Cylinder", ]
cylinderU06CV3$Utente <- "U06CV"
## controllo ultima posizione
U06CV3_check_cylinder <- tail(cylinderU06CV3, n = 1)

cubeU06CV3 <- objectsPositionU06CV3[objectsPositionU06CV3$objPosition %like% "Cube", ]
## controllo ultima posizione
U06CV3_check_cube <- tail(cubeU06CV3, n = 1)

sphereU06CV3 <- objectsPositionU06CV3[objectsPositionU06CV3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U06CV3_check_sphere <- tail(sphereU06CV3, n = 1)

U06CV3_check_total <- rbind(U06CV3_check_cylinder, U06CV3_check_cube, U06CV3_check_sphere)


## ------------------- U07CV3 -------------------
## copio dati da JSON
U07CV3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_04_14_15_38_U07.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU07CV3<-U07CV3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU07CV3<-U07CV3[[2]][[1]]
objectsPositionU07CV3$Utente <- "U07CV"

## creo tabella per ogni oggetto
cylinderU07CV3 <- objectsPositionU07CV3[objectsPositionU07CV3$objPosition %like% "Cylinder", ]
cylinderU07CV3$Utente <- "U07CV"
## controllo ultima posizione
U07CV3_check_cylinder <- tail(cylinderU07CV3, n = 1)

cubeU07CV3 <- objectsPositionU07CV3[objectsPositionU07CV3$objPosition %like% "Cube", ]
## controllo ultima posizione
U07CV3_check_cube <- tail(cubeU07CV3, n = 1)

sphereU07CV3 <- objectsPositionU07CV3[objectsPositionU07CV3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U07CV3_check_sphere <- tail(sphereU07CV3, n = 1)

U07CV3_check_total <- rbind(U07CV3_check_cylinder, U07CV3_check_cube, U07CV3_check_sphere)


## ------------------- U08CV3 -------------------
## copio dati da JSON
U08CV3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_04_15_39_57_U08.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU08CV3<-U08CV3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU08CV3<-U08CV3[[2]][[1]]
objectsPositionU08CV3$Utente <- "U08CV"

## creo tabella per ogni oggetto
cylinderU08CV3 <- objectsPositionU08CV3[objectsPositionU08CV3$objPosition %like% "Cylinder", ]
cylinderU08CV3$Utente <- "U08CV"
## controllo ultima posizione
U08CV3_check_cylinder <- tail(cylinderU08CV3, n = 1)

cubeU08CV3 <- objectsPositionU08CV3[objectsPositionU08CV3$objPosition %like% "Cube", ]
## controllo ultima posizione
U08CV3_check_cube <- tail(cubeU08CV3, n = 1)

sphereU08CV3 <- objectsPositionU08CV3[objectsPositionU08CV3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U08CV3_check_sphere <- tail(sphereU08CV3, n = 1)

U08CV3_check_total <- rbind(U08CV3_check_cylinder, U08CV3_check_cube, U08CV3_check_sphere)


## ------------------- U09CV3 -------------------
## copio dati da JSON
U09CV3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_04_16_22_58_U09.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU09CV3<-U09CV3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU09CV3<-U09CV3[[2]][[1]]
objectsPositionU09CV3$Utente <- "U09CV"

## creo tabella per ogni oggetto
cylinderU09CV3 <- objectsPositionU09CV3[objectsPositionU09CV3$objPosition %like% "Cylinder", ]
cylinderU09CV3$Utente <- "U09CV"
## controllo ultima posizione
U09CV3_check_cylinder <- tail(cylinderU09CV3, n = 1)

cubeU09CV3 <- objectsPositionU09CV3[objectsPositionU09CV3$objPosition %like% "Cube", ]
## controllo ultima posizione
U09CV3_check_cube <- tail(cubeU09CV3, n = 1)

sphereU09CV3 <- objectsPositionU09CV3[objectsPositionU09CV3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U09CV3_check_sphere <- tail(sphereU09CV3, n = 1)

U09CV3_check_total <- rbind(U09CV3_check_cylinder, U09CV3_check_cube, U09CV3_check_sphere)


## ------------------- U10CV3 -------------------
## copio dati da JSON
U10CV3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_05_09_51_39_U10.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU10CV3<-U10CV3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU10CV3<-U10CV3[[2]][[1]]
objectsPositionU10CV3$Utente <- "U10CV"

## creo tabella per ogni oggetto
cylinderU10CV3 <- objectsPositionU10CV3[objectsPositionU10CV3$objPosition %like% "Cylinder", ]
cylinderU10CV3$Utente <- "U10CV"
## controllo ultima posizione
U10CV3_check_cylinder <- tail(cylinderU10CV3, n = 1)

cubeU10CV3 <- objectsPositionU10CV3[objectsPositionU10CV3$objPosition %like% "Cube", ]
## controllo ultima posizione
U10CV3_check_cube <- tail(cubeU10CV3, n = 1)

sphereU10CV3 <- objectsPositionU10CV3[objectsPositionU10CV3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U10CV3_check_sphere <- tail(sphereU10CV3, n = 1)

U10CV3_check_total <- rbind(U10CV3_check_cylinder, U10CV3_check_cube, U10CV3_check_sphere)


## ------------------- U11CV3 -------------------
## copio dati da JSON
U11CV3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_05_10_59_30_U11.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU11CV3<-U11CV3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU11CV3<-U11CV3[[2]][[1]]
objectsPositionU11CV3$Utente <- "U11CV"

## creo tabella per ogni oggetto
cylinderU11CV3 <- objectsPositionU11CV3[objectsPositionU11CV3$objPosition %like% "Cylinder", ]
cylinderU11CV3$Utente <- "U11CV"
## controllo ultima posizione
U11CV3_check_cylinder <- tail(cylinderU11CV3, n = 1)

cubeU11CV3 <- objectsPositionU11CV3[objectsPositionU11CV3$objPosition %like% "Cube", ]
## controllo ultima posizione
U11CV3_check_cube <- tail(cubeU11CV3, n = 1)

sphereU11CV3 <- objectsPositionU11CV3[objectsPositionU11CV3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U11CV3_check_sphere <- tail(sphereU11CV3, n = 1)

U11CV3_check_total <- rbind(U11CV3_check_cylinder, U11CV3_check_cube, U11CV3_check_sphere)


## ------------------- U12CV3 -------------------
## copio dati da JSON
U12CV3 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_05_11_51_58_U12.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU12CV3<-U12CV3[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU12CV3<-U12CV3[[2]][[1]]
objectsPositionU12CV3$Utente <- "U12CV"

## creo tabella per ogni oggetto
cylinderU12CV3 <- objectsPositionU12CV3[objectsPositionU12CV3$objPosition %like% "Cylinder", ]
cylinderU12CV3$Utente <- "U12CV"
## controllo ultima posizione
U12CV3_check_cylinder <- tail(cylinderU12CV3, n = 1)

cubeU12CV3 <- objectsPositionU12CV3[objectsPositionU12CV3$objPosition %like% "Cube", ]
## controllo ultima posizione
U12CV3_check_cube <- tail(cubeU12CV3, n = 1)

sphereU12CV3 <- objectsPositionU12CV3[objectsPositionU12CV3$objPosition %like% "Sphere", ]
## controllo ultima posizione
U12CV3_check_sphere <- tail(sphereU12CV3, n = 1)

U12CV3_check_total <- rbind(U12CV3_check_cylinder, U12CV3_check_cube, U12CV3_check_sphere)





## tabella finale
CV3 <- rbind(U01CV3_check_total, U02CV3_check_total, U03CV3_check_total,
             U04CV3_check_total, U05CV3_check_total, U06CV3_check_total,
             U07CV3_check_total, U08CV3_check_total, U09CV3_check_total,
             U10CV3_check_total, U11CV3_check_total, U12CV3_check_total)
#rinomino le colonne
colnames(CV3) <- c('Date', 'OBJ Position', 'Utente')

write.xlsx(CV3, file = "CV3.xlsx",
           sheetName = "CV3", append = FALSE)

readxl::read_excel("C:/Users/Edoardo/Documents/HapticMemorySequence/CV3.xlsx",sheet = "CV3_def")

##CV3$PosixDate <- as.POSIXct(CV3$Date, tz = "UTC", format = "%Y-%m-%dT%H:%M:%S:%OSZ")


##CV3$MyDate <- as.Date(CV3$Date)

##as.POSIXct(1.439165e+12/1000, origin = "1970-01-01", tz = "UTC")
