library("jsonlite")
library("dplyr")
library("tidyr")
library("tidyverse")
library("data.table")

## ------------------- U01CV5 -------------------
## copio dati da JSON
U01CV5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_03_14_01_24_U01.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU01CV5<-U01CV5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU01CV5<-U01CV5[[2]][[1]]
objectsPositionU01CV5$Utente <- "U01CV"

## creo tabella per ogni oggetto
Cube2U01CV5 <- objectsPositionU01CV5[objectsPositionU01CV5$objPosition %like% "Cube2", ]
Cube2U01CV5$Utente <- "U01CV"
## controllo ultima posizione
U01CV5_check_Cube2 <- tail(Cube2U01CV5, n = 1)

CylinderU01CV5 <- objectsPositionU01CV5[objectsPositionU01CV5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U01CV5_check_Cylinder <- tail(CylinderU01CV5, n = 1)

CubeU01CV5 <- objectsPositionU01CV5[objectsPositionU01CV5$objPosition %like% "Cube", ]
## controllo ultima posizione
U01CV5_check_Cube <- tail(CubeU01CV5, n = 1)

Cylinder2U01CV5 <- objectsPositionU01CV5[objectsPositionU01CV5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U01CV5_check_Cylinder2 <- tail(Cylinder2U01CV5, n = 1)

SphereU01CV5 <- objectsPositionU01CV5[objectsPositionU01CV5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U01CV5_check_Sphere <- tail(SphereU01CV5, n = 1)

U01CV5_check_total <- rbind(U01CV5_check_Cube2, U01CV5_check_Cylinder,
                            U01CV5_check_Cube, U01CV5_check_Cylinder2,
                            U01CV5_check_Sphere)


## ------------------- U02CV5 -------------------
## copio dati da JSON
U02CV5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_03_15_29_38_U02.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU02CV5<-U02CV5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU02CV5<-U02CV5[[2]][[1]]
objectsPositionU02CV5$Utente <- "U02CV"

## creo tabella per ogni oggetto
Cube2U02CV5 <- objectsPositionU02CV5[objectsPositionU02CV5$objPosition %like% "Cube2", ]
Cube2U02CV5$Utente <- "U02CV"
## controllo ultima posizione
U02CV5_check_Cube2 <- tail(Cube2U02CV5, n = 1)

CylinderU02CV5 <- objectsPositionU02CV5[objectsPositionU02CV5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U02CV5_check_Cylinder <- tail(CylinderU02CV5, n = 1)

CubeU02CV5 <- objectsPositionU02CV5[objectsPositionU02CV5$objPosition %like% "Cube", ]
## controllo ultima posizione
U02CV5_check_Cube <- tail(CubeU02CV5, n = 1)

Cylinder2U02CV5 <- objectsPositionU02CV5[objectsPositionU02CV5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U02CV5_check_Cylinder2 <- tail(Cylinder2U02CV5, n = 1)

SphereU02CV5 <- objectsPositionU02CV5[objectsPositionU02CV5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U02CV5_check_Sphere <- tail(SphereU02CV5, n = 1)

U02CV5_check_total <- rbind(U02CV5_check_Cube2, U02CV5_check_Cylinder,
                            U02CV5_check_Cube, U02CV5_check_Cylinder2,
                            U02CV5_check_Sphere)


## ------------------- U03CV5 -------------------
## copio dati da JSON
U03CV5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_03_16_05_45_U03.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU03CV5<-U03CV5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU03CV5<-U03CV5[[2]][[1]]
objectsPositionU03CV5$Utente <- "U03CV"

## creo tabella per ogni oggetto
Cube2U03CV5 <- objectsPositionU03CV5[objectsPositionU03CV5$objPosition %like% "Cube2", ]
Cube2U03CV5$Utente <- "U03CV"
## controllo ultima posizione
U03CV5_check_Cube2 <- tail(Cube2U03CV5, n = 1)

CylinderU03CV5 <- objectsPositionU03CV5[objectsPositionU03CV5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U03CV5_check_Cylinder <- tail(CylinderU03CV5, n = 1)

CubeU03CV5 <- objectsPositionU03CV5[objectsPositionU03CV5$objPosition %like% "Cube", ]
## controllo ultima posizione
U03CV5_check_Cube <- tail(CubeU03CV5, n = 1)

Cylinder2U03CV5 <- objectsPositionU03CV5[objectsPositionU03CV5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U03CV5_check_Cylinder2 <- tail(Cylinder2U03CV5, n = 1)

SphereU03CV5 <- objectsPositionU03CV5[objectsPositionU03CV5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U03CV5_check_Sphere <- tail(SphereU03CV5, n = 1)

U03CV5_check_total <- rbind(U03CV5_check_Cube2, U03CV5_check_Cylinder,
                            U03CV5_check_Cube, U03CV5_check_Cylinder2,
                            U03CV5_check_Sphere)


## ------------------- U04CV5 -------------------
## copio dati da JSON
U04CV5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_04_09_34_12_U04.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU04CV5<-U04CV5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU04CV5<-U04CV5[[2]][[1]]
objectsPositionU04CV5$Utente <- "U04CV"

## creo tabella per ogni oggetto
Cube2U04CV5 <- objectsPositionU04CV5[objectsPositionU04CV5$objPosition %like% "Cube2", ]
Cube2U04CV5$Utente <- "U04CV"
## controllo ultima posizione
U04CV5_check_Cube2 <- tail(Cube2U04CV5, n = 1)

CylinderU04CV5 <- objectsPositionU04CV5[objectsPositionU04CV5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U04CV5_check_Cylinder <- tail(CylinderU04CV5, n = 1)

CubeU04CV5 <- objectsPositionU04CV5[objectsPositionU04CV5$objPosition %like% "Cube", ]
## controllo ultima posizione
U04CV5_check_Cube <- tail(CubeU04CV5, n = 1)

Cylinder2U04CV5 <- objectsPositionU04CV5[objectsPositionU04CV5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U04CV5_check_Cylinder2 <- tail(Cylinder2U04CV5, n = 1)

SphereU04CV5 <- objectsPositionU04CV5[objectsPositionU04CV5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U04CV5_check_Sphere <- tail(SphereU04CV5, n = 1)

U04CV5_check_total <- rbind(U04CV5_check_Cube2, U04CV5_check_Cylinder,
                            U04CV5_check_Cube, U04CV5_check_Cylinder2,
                            U04CV5_check_Sphere)


## ------------------- U05CV5 -------------------
## copio dati da JSON
U05CV5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_04_10_32_58_U05.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU05CV5<-U05CV5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU05CV5<-U05CV5[[2]][[1]]
objectsPositionU05CV5$Utente <- "U05CV"

## creo tabella per ogni oggetto
Cube2U05CV5 <- objectsPositionU05CV5[objectsPositionU05CV5$objPosition %like% "Cube2", ]
Cube2U05CV5$Utente <- "U05CV"
## controllo ultima posizione
U05CV5_check_Cube2 <- tail(Cube2U05CV5, n = 1)

CylinderU05CV5 <- objectsPositionU05CV5[objectsPositionU05CV5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U05CV5_check_Cylinder <- tail(CylinderU05CV5, n = 1)

CubeU05CV5 <- objectsPositionU05CV5[objectsPositionU05CV5$objPosition %like% "Cube", ]
## controllo ultima posizione
U05CV5_check_Cube <- tail(CubeU05CV5, n = 1)

Cylinder2U05CV5 <- objectsPositionU05CV5[objectsPositionU05CV5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U05CV5_check_Cylinder2 <- tail(Cylinder2U05CV5, n = 1)

SphereU05CV5 <- objectsPositionU05CV5[objectsPositionU05CV5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U05CV5_check_Sphere <- tail(SphereU05CV5, n = 1)

U05CV5_check_total <- rbind(U05CV5_check_Cube2, U05CV5_check_Cylinder,
                            U05CV5_check_Cube, U05CV5_check_Cylinder2,
                            U05CV5_check_Sphere)


## ------------------- U06CV5 -------------------
## copio dati da JSON
U06CV5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_04_11_32_23_U06.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU06CV5<-U06CV5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU06CV5<-U06CV5[[2]][[1]]
objectsPositionU06CV5$Utente <- "U06CV"

## creo tabella per ogni oggetto
Cube2U06CV5 <- objectsPositionU06CV5[objectsPositionU06CV5$objPosition %like% "Cube2", ]
Cube2U06CV5$Utente <- "U06CV"
## controllo ultima posizione
U06CV5_check_Cube2 <- tail(Cube2U06CV5, n = 1)

CylinderU06CV5 <- objectsPositionU06CV5[objectsPositionU06CV5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U06CV5_check_Cylinder <- tail(CylinderU06CV5, n = 1)

CubeU06CV5 <- objectsPositionU06CV5[objectsPositionU06CV5$objPosition %like% "Cube", ]
## controllo ultima posizione
U06CV5_check_Cube <- tail(CubeU06CV5, n = 1)

Cylinder2U06CV5 <- objectsPositionU06CV5[objectsPositionU06CV5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U06CV5_check_Cylinder2 <- tail(Cylinder2U06CV5, n = 1)

SphereU06CV5 <- objectsPositionU06CV5[objectsPositionU06CV5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U06CV5_check_Sphere <- tail(SphereU06CV5, n = 1)

U06CV5_check_total <- rbind(U06CV5_check_Cube2, U06CV5_check_Cylinder,
                            U06CV5_check_Cube, U06CV5_check_Cylinder2,
                            U06CV5_check_Sphere)


## ------------------- U07CV5 -------------------
## copio dati da JSON
U07CV5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_04_14_16_20_U07.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU07CV5<-U07CV5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU07CV5<-U07CV5[[2]][[1]]
objectsPositionU07CV5$Utente <- "U07CV"

## creo tabella per ogni oggetto
Cube2U07CV5 <- objectsPositionU07CV5[objectsPositionU07CV5$objPosition %like% "Cube2", ]
Cube2U07CV5$Utente <- "U07CV"
## controllo ultima posizione
U07CV5_check_Cube2 <- tail(Cube2U07CV5, n = 1)

CylinderU07CV5 <- objectsPositionU07CV5[objectsPositionU07CV5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U07CV5_check_Cylinder <- tail(CylinderU07CV5, n = 1)

CubeU07CV5 <- objectsPositionU07CV5[objectsPositionU07CV5$objPosition %like% "Cube", ]
## controllo ultima posizione
U07CV5_check_Cube <- tail(CubeU07CV5, n = 1)

Cylinder2U07CV5 <- objectsPositionU07CV5[objectsPositionU07CV5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U07CV5_check_Cylinder2 <- tail(Cylinder2U07CV5, n = 1)

SphereU07CV5 <- objectsPositionU07CV5[objectsPositionU07CV5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U07CV5_check_Sphere <- tail(SphereU07CV5, n = 1)

U07CV5_check_total <- rbind(U07CV5_check_Cube2, U07CV5_check_Cylinder,
                            U07CV5_check_Cube, U07CV5_check_Cylinder2,
                            U07CV5_check_Sphere)

## ------------------- U08CV5 -------------------
## copio dati da JSON
U08CV5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_04_15_41_03_U08.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU08CV5<-U08CV5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU08CV5<-U08CV5[[2]][[1]]
objectsPositionU08CV5$Utente <- "U08CV"

## creo tabella per ogni oggetto
Cube2U08CV5 <- objectsPositionU08CV5[objectsPositionU08CV5$objPosition %like% "Cube2", ]
Cube2U08CV5$Utente <- "U08CV"
## controllo ultima posizione
U08CV5_check_Cube2 <- tail(Cube2U08CV5, n = 1)

CylinderU08CV5 <- objectsPositionU08CV5[objectsPositionU08CV5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U08CV5_check_Cylinder <- tail(CylinderU08CV5, n = 1)

CubeU08CV5 <- objectsPositionU08CV5[objectsPositionU08CV5$objPosition %like% "Cube", ]
## controllo ultima posizione
U08CV5_check_Cube <- tail(CubeU08CV5, n = 1)

Cylinder2U08CV5 <- objectsPositionU08CV5[objectsPositionU08CV5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U08CV5_check_Cylinder2 <- tail(Cylinder2U08CV5, n = 1)

SphereU08CV5 <- objectsPositionU08CV5[objectsPositionU08CV5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U08CV5_check_Sphere <- tail(SphereU08CV5, n = 1)

U08CV5_check_total <- rbind(U08CV5_check_Cube2, U08CV5_check_Cylinder,
                            U08CV5_check_Cube, U08CV5_check_Cylinder2,
                            U08CV5_check_Sphere)


## ------------------- U09CV5 -------------------
## copio dati da JSON
U09CV5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_04_16_23_45_U09.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU09CV5<-U09CV5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU09CV5<-U09CV5[[2]][[1]]
objectsPositionU09CV5$Utente <- "U09CV"

## creo tabella per ogni oggetto
Cube2U09CV5 <- objectsPositionU09CV5[objectsPositionU09CV5$objPosition %like% "Cube2", ]
Cube2U09CV5$Utente <- "U09CV"
## controllo ultima posizione
U09CV5_check_Cube2 <- tail(Cube2U09CV5, n = 1)

CylinderU09CV5 <- objectsPositionU09CV5[objectsPositionU09CV5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U09CV5_check_Cylinder <- tail(CylinderU09CV5, n = 1)

CubeU09CV5 <- objectsPositionU09CV5[objectsPositionU09CV5$objPosition %like% "Cube", ]
## controllo ultima posizione
U09CV5_check_Cube <- tail(CubeU09CV5, n = 1)

Cylinder2U09CV5 <- objectsPositionU09CV5[objectsPositionU09CV5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U09CV5_check_Cylinder2 <- tail(Cylinder2U09CV5, n = 1)

SphereU09CV5 <- objectsPositionU09CV5[objectsPositionU09CV5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U09CV5_check_Sphere <- tail(SphereU09CV5, n = 1)

U09CV5_check_total <- rbind(U09CV5_check_Cube2, U09CV5_check_Cylinder,
                            U09CV5_check_Cube, U09CV5_check_Cylinder2,
                            U09CV5_check_Sphere)


## ------------------- U10CV5 -------------------
## copio dati da JSON
U10CV5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_05_09_52_20_U10.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU10CV5<-U10CV5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU10CV5<-U10CV5[[2]][[1]]
objectsPositionU10CV5$Utente <- "U10CV"

## creo tabella per ogni oggetto
Cube2U10CV5 <- objectsPositionU10CV5[objectsPositionU10CV5$objPosition %like% "Cube2", ]
Cube2U10CV5$Utente <- "U10CV"
## controllo ultima posizione
U10CV5_check_Cube2 <- tail(Cube2U10CV5, n = 1)

CylinderU10CV5 <- objectsPositionU10CV5[objectsPositionU10CV5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U10CV5_check_Cylinder <- tail(CylinderU10CV5, n = 1)

CubeU10CV5 <- objectsPositionU10CV5[objectsPositionU10CV5$objPosition %like% "Cube", ]
## controllo ultima posizione
U10CV5_check_Cube <- tail(CubeU10CV5, n = 1)

Cylinder2U10CV5 <- objectsPositionU10CV5[objectsPositionU10CV5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U10CV5_check_Cylinder2 <- tail(Cylinder2U10CV5, n = 1)

SphereU10CV5 <- objectsPositionU10CV5[objectsPositionU10CV5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U10CV5_check_Sphere <- tail(SphereU10CV5, n = 1)

U10CV5_check_total <- rbind(U10CV5_check_Cube2, U10CV5_check_Cylinder,
                            U10CV5_check_Cube, U10CV5_check_Cylinder2,
                            U10CV5_check_Sphere)


## ------------------- U11CV5 -------------------
## copio dati da JSON
U11CV5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_05_11_00_06_U11.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU11CV5<-U11CV5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU11CV5<-U11CV5[[2]][[1]]
objectsPositionU11CV5$Utente <- "U11CV"

## creo tabella per ogni oggetto
Cube2U11CV5 <- objectsPositionU11CV5[objectsPositionU11CV5$objPosition %like% "Cube2", ]
Cube2U11CV5$Utente <- "U11CV"
## controllo ultima posizione
U11CV5_check_Cube2 <- tail(Cube2U11CV5, n = 1)

CylinderU11CV5 <- objectsPositionU11CV5[objectsPositionU11CV5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U11CV5_check_Cylinder <- tail(CylinderU11CV5, n = 1)

CubeU11CV5 <- objectsPositionU11CV5[objectsPositionU11CV5$objPosition %like% "Cube", ]
## controllo ultima posizione
U11CV5_check_Cube <- tail(CubeU11CV5, n = 1)

Cylinder2U11CV5 <- objectsPositionU11CV5[objectsPositionU11CV5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U11CV5_check_Cylinder2 <- tail(Cylinder2U11CV5, n = 1)

SphereU11CV5 <- objectsPositionU11CV5[objectsPositionU11CV5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U11CV5_check_Sphere <- tail(SphereU11CV5, n = 1)

U11CV5_check_total <- rbind(U11CV5_check_Cube2, U11CV5_check_Cylinder,
                            U11CV5_check_Cube, U11CV5_check_Cylinder2,
                            U11CV5_check_Sphere)


## ------------------- U12CV5 -------------------
## copio dati da JSON
U12CV5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_05_11_52_29_U12.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU12CV5<-U12CV5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU12CV5<-U12CV5[[2]][[1]]
objectsPositionU12CV5$Utente <- "U12CV"

## creo tabella per ogni oggetto
Cube2U12CV5 <- objectsPositionU12CV5[objectsPositionU12CV5$objPosition %like% "Cube2", ]
Cube2U12CV5$Utente <- "U12CV"
## controllo ultima posizione
U12CV5_check_Cube2 <- tail(Cube2U12CV5, n = 1)

CylinderU12CV5 <- objectsPositionU12CV5[objectsPositionU12CV5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U12CV5_check_Cylinder <- tail(CylinderU12CV5, n = 1)

CubeU12CV5 <- objectsPositionU12CV5[objectsPositionU12CV5$objPosition %like% "Cube", ]
## controllo ultima posizione
U12CV5_check_Cube <- tail(CubeU12CV5, n = 1)

Cylinder2U12CV5 <- objectsPositionU12CV5[objectsPositionU12CV5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U12CV5_check_Cylinder2 <- tail(Cylinder2U12CV5, n = 1)

SphereU12CV5 <- objectsPositionU12CV5[objectsPositionU12CV5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U12CV5_check_Sphere <- tail(SphereU12CV5, n = 1)

U12CV5_check_total <- rbind(U12CV5_check_Cube2, U12CV5_check_Cylinder,
                            U12CV5_check_Cube, U12CV5_check_Cylinder2,
                            U12CV5_check_Sphere)


## tabella finale
CV5 <- rbind(U01CV5_check_total, U02CV5_check_total, U03CV5_check_total,
             U04CV5_check_total, U05CV5_check_total, U06CV5_check_total,
             U07CV5_check_total, U08CV5_check_total, U09CV5_check_total,
             U10CV5_check_total, U11CV5_check_total, U12CV5_check_total)