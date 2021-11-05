library("jsonlite")
library("dplyr")
library("tidyr")
library("tidyverse")
library("data.table")

## ------------------- U01SG5 -------------------
## copio dati da JSON
U01SG5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_03_14_14_19_U01.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU01SG5<-U01SG5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU01SG5<-U01SG5[[2]][[1]]
objectsPositionU01SG5$Utente <- "U01SG"

## creo tabella per ogni oggetto
Cube2U01SG5 <- objectsPositionU01SG5[objectsPositionU01SG5$objPosition %like% "Cube2", ]
Cube2U01SG5$Utente <- "U01SG"
## controllo ultima posizione
U01SG5_check_Cube2 <- tail(Cube2U01SG5, n = 1)

CylinderU01SG5 <- objectsPositionU01SG5[objectsPositionU01SG5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U01SG5_check_Cylinder <- tail(CylinderU01SG5, n = 1)

CubeU01SG5 <- objectsPositionU01SG5[objectsPositionU01SG5$objPosition %like% "Cube", ]
## controllo ultima posizione
U01SG5_check_Cube <- tail(CubeU01SG5, n = 1)

Cylinder2U01SG5 <- objectsPositionU01SG5[objectsPositionU01SG5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U01SG5_check_Cylinder2 <- tail(Cylinder2U01SG5, n = 1)

SphereU01SG5 <- objectsPositionU01SG5[objectsPositionU01SG5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U01SG5_check_Sphere <- tail(SphereU01SG5, n = 1)

U01SG5_check_total <- rbind(U01SG5_check_Cube2, U01SG5_check_Cylinder,
                            U01SG5_check_Cube, U01SG5_check_Cylinder2,
                            U01SG5_check_Sphere)


## ------------------- U02SG5 -------------------
## copio dati da JSON
U02SG5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_03_15_13_53_U02.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU02SG5<-U02SG5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU02SG5<-U02SG5[[2]][[1]]
objectsPositionU02SG5$Utente <- "U02SG"

## creo tabella per ogni oggetto
Cube2U02SG5 <- objectsPositionU02SG5[objectsPositionU02SG5$objPosition %like% "Cube2", ]
Cube2U02SG5$Utente <- "U02SG"
## controllo ultima posizione
U02SG5_check_Cube2 <- tail(Cube2U02SG5, n = 1)

CylinderU02SG5 <- objectsPositionU02SG5[objectsPositionU02SG5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U02SG5_check_Cylinder <- tail(CylinderU02SG5, n = 1)

CubeU02SG5 <- objectsPositionU02SG5[objectsPositionU02SG5$objPosition %like% "Cube", ]
## controllo ultima posizione
U02SG5_check_Cube <- tail(CubeU02SG5, n = 1)

Cylinder2U02SG5 <- objectsPositionU02SG5[objectsPositionU02SG5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U02SG5_check_Cylinder2 <- tail(Cylinder2U02SG5, n = 1)

SphereU02SG5 <- objectsPositionU02SG5[objectsPositionU02SG5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U02SG5_check_Sphere <- tail(SphereU02SG5, n = 1)

U02SG5_check_total <- rbind(U02SG5_check_Cube2, U02SG5_check_Cylinder,
                            U02SG5_check_Cube, U02SG5_check_Cylinder2,
                            U02SG5_check_Sphere)


## ------------------- U03SG5 -------------------
## copio dati da JSON
U03SG5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_03_16_19_45_U03.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU03SG5<-U03SG5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU03SG5<-U03SG5[[2]][[1]]
objectsPositionU03SG5$Utente <- "U03SG"

## creo tabella per ogni oggetto
Cube2U03SG5 <- objectsPositionU03SG5[objectsPositionU03SG5$objPosition %like% "Cube2", ]
Cube2U03SG5$Utente <- "U03SG"
## controllo ultima posizione
U03SG5_check_Cube2 <- tail(Cube2U03SG5, n = 1)

CylinderU03SG5 <- objectsPositionU03SG5[objectsPositionU03SG5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U03SG5_check_Cylinder <- tail(CylinderU03SG5, n = 1)

CubeU03SG5 <- objectsPositionU03SG5[objectsPositionU03SG5$objPosition %like% "Cube", ]
## controllo ultima posizione
U03SG5_check_Cube <- tail(CubeU03SG5, n = 1)

Cylinder2U03SG5 <- objectsPositionU03SG5[objectsPositionU03SG5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U03SG5_check_Cylinder2 <- tail(Cylinder2U03SG5, n = 1)

SphereU03SG5 <- objectsPositionU03SG5[objectsPositionU03SG5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U03SG5_check_Sphere <- tail(SphereU03SG5, n = 1)

U03SG5_check_total <- rbind(U03SG5_check_Cube2, U03SG5_check_Cylinder,
                            U03SG5_check_Cube, U03SG5_check_Cylinder2,
                            U03SG5_check_Sphere)


## ------------------- U04SG5 -------------------
## copio dati da JSON
U04SG5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_04_09_51_47_U04.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU04SG5<-U04SG5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU04SG5<-U04SG5[[2]][[1]]
objectsPositionU04SG5$Utente <- "U04SG"

## creo tabella per ogni oggetto
Cube2U04SG5 <- objectsPositionU04SG5[objectsPositionU04SG5$objPosition %like% "Cube2", ]
Cube2U04SG5$Utente <- "U04SG"
## controllo ultima posizione
U04SG5_check_Cube2 <- tail(Cube2U04SG5, n = 1)

CylinderU04SG5 <- objectsPositionU04SG5[objectsPositionU04SG5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U04SG5_check_Cylinder <- tail(CylinderU04SG5, n = 1)

CubeU04SG5 <- objectsPositionU04SG5[objectsPositionU04SG5$objPosition %like% "Cube", ]
## controllo ultima posizione
U04SG5_check_Cube <- tail(CubeU04SG5, n = 1)

Cylinder2U04SG5 <- objectsPositionU04SG5[objectsPositionU04SG5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U04SG5_check_Cylinder2 <- tail(Cylinder2U04SG5, n = 1)

SphereU04SG5 <- objectsPositionU04SG5[objectsPositionU04SG5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U04SG5_check_Sphere <- tail(SphereU04SG5, n = 1)

U04SG5_check_total <- rbind(U04SG5_check_Cube2, U04SG5_check_Cylinder,
                            U04SG5_check_Cube, U04SG5_check_Cylinder2,
                            U04SG5_check_Sphere)


## ------------------- U05SG5 -------------------
## copio dati da JSON
U05SG5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_04_10_45_02_U05.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU05SG5<-U05SG5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU05SG5<-U05SG5[[2]][[1]]
objectsPositionU05SG5$Utente <- "U05SG"

## creo tabella per ogni oggetto
Cube2U05SG5 <- objectsPositionU05SG5[objectsPositionU05SG5$objPosition %like% "Cube2", ]
Cube2U05SG5$Utente <- "U05SG"
## controllo ultima posizione
U05SG5_check_Cube2 <- tail(Cube2U05SG5, n = 1)

CylinderU05SG5 <- objectsPositionU05SG5[objectsPositionU05SG5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U05SG5_check_Cylinder <- tail(CylinderU05SG5, n = 1)

CubeU05SG5 <- objectsPositionU05SG5[objectsPositionU05SG5$objPosition %like% "Cube", ]
## controllo ultima posizione
U05SG5_check_Cube <- tail(CubeU05SG5, n = 1)

Cylinder2U05SG5 <- objectsPositionU05SG5[objectsPositionU05SG5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U05SG5_check_Cylinder2 <- tail(Cylinder2U05SG5, n = 1)

SphereU05SG5 <- objectsPositionU05SG5[objectsPositionU05SG5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U05SG5_check_Sphere <- tail(SphereU05SG5, n = 1)

U05SG5_check_total <- rbind(U05SG5_check_Cube2, U05SG5_check_Cylinder,
                            U05SG5_check_Cube, U05SG5_check_Cylinder2,
                            U05SG5_check_Sphere)


## ------------------- U06SG5 -------------------
## copio dati da JSON
U06SG5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_04_11_21_04_U06.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU06SG5<-U06SG5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU06SG5<-U06SG5[[2]][[1]]
objectsPositionU06SG5$Utente <- "U06SG"

## creo tabella per ogni oggetto
Cube2U06SG5 <- objectsPositionU06SG5[objectsPositionU06SG5$objPosition %like% "Cube2", ]
Cube2U06SG5$Utente <- "U06SG"
## controllo ultima posizione
U06SG5_check_Cube2 <- tail(Cube2U06SG5, n = 1)

CylinderU06SG5 <- objectsPositionU06SG5[objectsPositionU06SG5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U06SG5_check_Cylinder <- tail(CylinderU06SG5, n = 1)

CubeU06SG5 <- objectsPositionU06SG5[objectsPositionU06SG5$objPosition %like% "Cube", ]
## controllo ultima posizione
U06SG5_check_Cube <- tail(CubeU06SG5, n = 1)

Cylinder2U06SG5 <- objectsPositionU06SG5[objectsPositionU06SG5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U06SG5_check_Cylinder2 <- tail(Cylinder2U06SG5, n = 1)

SphereU06SG5 <- objectsPositionU06SG5[objectsPositionU06SG5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U06SG5_check_Sphere <- tail(SphereU06SG5, n = 1)

U06SG5_check_total <- rbind(U06SG5_check_Cube2, U06SG5_check_Cylinder,
                            U06SG5_check_Cube, U06SG5_check_Cylinder2,
                            U06SG5_check_Sphere)


## ------------------- U07SG5 -------------------
## copio dati da JSON
U07SG5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_04_14_32_33_U07.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU07SG5<-U07SG5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU07SG5<-U07SG5[[2]][[1]]
objectsPositionU07SG5$Utente <- "U07SG"

## creo tabella per ogni oggetto
Cube2U07SG5 <- objectsPositionU07SG5[objectsPositionU07SG5$objPosition %like% "Cube2", ]
Cube2U07SG5$Utente <- "U07SG"
## controllo ultima posizione
U07SG5_check_Cube2 <- tail(Cube2U07SG5, n = 1)

CylinderU07SG5 <- objectsPositionU07SG5[objectsPositionU07SG5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U07SG5_check_Cylinder <- tail(CylinderU07SG5, n = 1)

CubeU07SG5 <- objectsPositionU07SG5[objectsPositionU07SG5$objPosition %like% "Cube", ]
## controllo ultima posizione
U07SG5_check_Cube <- tail(CubeU07SG5, n = 1)

Cylinder2U07SG5 <- objectsPositionU07SG5[objectsPositionU07SG5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U07SG5_check_Cylinder2 <- tail(Cylinder2U07SG5, n = 1)

SphereU07SG5 <- objectsPositionU07SG5[objectsPositionU07SG5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U07SG5_check_Sphere <- tail(SphereU07SG5, n = 1)

U07SG5_check_total <- rbind(U07SG5_check_Cube2, U07SG5_check_Cylinder,
                            U07SG5_check_Cube, U07SG5_check_Cylinder2,
                            U07SG5_check_Sphere)

## ------------------- U08SG5 -------------------
## copio dati da JSON
U08SG5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_04_15_25_57_U08.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU08SG5<-U08SG5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU08SG5<-U08SG5[[2]][[1]]
objectsPositionU08SG5$Utente <- "U08SG"

## creo tabella per ogni oggetto
Cube2U08SG5 <- objectsPositionU08SG5[objectsPositionU08SG5$objPosition %like% "Cube2", ]
Cube2U08SG5$Utente <- "U08SG"
## controllo ultima posizione
U08SG5_check_Cube2 <- tail(Cube2U08SG5, n = 1)

CylinderU08SG5 <- objectsPositionU08SG5[objectsPositionU08SG5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U08SG5_check_Cylinder <- tail(CylinderU08SG5, n = 1)

CubeU08SG5 <- objectsPositionU08SG5[objectsPositionU08SG5$objPosition %like% "Cube", ]
## controllo ultima posizione
U08SG5_check_Cube <- tail(CubeU08SG5, n = 1)

Cylinder2U08SG5 <- objectsPositionU08SG5[objectsPositionU08SG5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U08SG5_check_Cylinder2 <- tail(Cylinder2U08SG5, n = 1)

SphereU08SG5 <- objectsPositionU08SG5[objectsPositionU08SG5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U08SG5_check_Sphere <- tail(SphereU08SG5, n = 1)

U08SG5_check_total <- rbind(U08SG5_check_Cube2, U08SG5_check_Cylinder,
                            U08SG5_check_Cube, U08SG5_check_Cylinder2,
                            U08SG5_check_Sphere)


## ------------------- U09SG5 -------------------
## copio dati da JSON
U09SG5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_04_16_37_01_U09.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU09SG5<-U09SG5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU09SG5<-U09SG5[[2]][[1]]
objectsPositionU09SG5$Utente <- "U09SG"

## creo tabella per ogni oggetto
Cube2U09SG5 <- objectsPositionU09SG5[objectsPositionU09SG5$objPosition %like% "Cube2", ]
Cube2U09SG5$Utente <- "U09SG"
## controllo ultima posizione
U09SG5_check_Cube2 <- tail(Cube2U09SG5, n = 1)

CylinderU09SG5 <- objectsPositionU09SG5[objectsPositionU09SG5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U09SG5_check_Cylinder <- tail(CylinderU09SG5, n = 1)

CubeU09SG5 <- objectsPositionU09SG5[objectsPositionU09SG5$objPosition %like% "Cube", ]
## controllo ultima posizione
U09SG5_check_Cube <- tail(CubeU09SG5, n = 1)

Cylinder2U09SG5 <- objectsPositionU09SG5[objectsPositionU09SG5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U09SG5_check_Cylinder2 <- tail(Cylinder2U09SG5, n = 1)

SphereU09SG5 <- objectsPositionU09SG5[objectsPositionU09SG5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U09SG5_check_Sphere <- tail(SphereU09SG5, n = 1)

U09SG5_check_total <- rbind(U09SG5_check_Cube2, U09SG5_check_Cylinder,
                            U09SG5_check_Cube, U09SG5_check_Cylinder2,
                            U09SG5_check_Sphere)


## ------------------- U10SG5 -------------------
## copio dati da JSON
U10SG5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_05_09_39_12_U10.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU10SG5<-U10SG5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU10SG5<-U10SG5[[2]][[1]]
objectsPositionU10SG5$Utente <- "U10SG"

## creo tabella per ogni oggetto
Cube2U10SG5 <- objectsPositionU10SG5[objectsPositionU10SG5$objPosition %like% "Cube2", ]
Cube2U10SG5$Utente <- "U10SG"
## controllo ultima posizione
U10SG5_check_Cube2 <- tail(Cube2U10SG5, n = 1)

CylinderU10SG5 <- objectsPositionU10SG5[objectsPositionU10SG5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U10SG5_check_Cylinder <- tail(CylinderU10SG5, n = 1)

CubeU10SG5 <- objectsPositionU10SG5[objectsPositionU10SG5$objPosition %like% "Cube", ]
## controllo ultima posizione
U10SG5_check_Cube <- tail(CubeU10SG5, n = 1)

Cylinder2U10SG5 <- objectsPositionU10SG5[objectsPositionU10SG5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U10SG5_check_Cylinder2 <- tail(Cylinder2U10SG5, n = 1)

SphereU10SG5 <- objectsPositionU10SG5[objectsPositionU10SG5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U10SG5_check_Sphere <- tail(SphereU10SG5, n = 1)

U10SG5_check_total <- rbind(U10SG5_check_Cube2, U10SG5_check_Cylinder,
                            U10SG5_check_Cube, U10SG5_check_Cylinder2,
                            U10SG5_check_Sphere)


## ------------------- U11SG5 -------------------
## copio dati da JSON
U11SG5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_05_11_13_10_U11.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU11SG5<-U11SG5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU11SG5<-U11SG5[[2]][[1]]
objectsPositionU11SG5$Utente <- "U11SG"

## creo tabella per ogni oggetto
Cube2U11SG5 <- objectsPositionU11SG5[objectsPositionU11SG5$objPosition %like% "Cube2", ]
Cube2U11SG5$Utente <- "U11SG"
## controllo ultima posizione
U11SG5_check_Cube2 <- tail(Cube2U11SG5, n = 1)

CylinderU11SG5 <- objectsPositionU11SG5[objectsPositionU11SG5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U11SG5_check_Cylinder <- tail(CylinderU11SG5, n = 1)

CubeU11SG5 <- objectsPositionU11SG5[objectsPositionU11SG5$objPosition %like% "Cube", ]
## controllo ultima posizione
U11SG5_check_Cube <- tail(CubeU11SG5, n = 1)

Cylinder2U11SG5 <- objectsPositionU11SG5[objectsPositionU11SG5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U11SG5_check_Cylinder2 <- tail(Cylinder2U11SG5, n = 1)

SphereU11SG5 <- objectsPositionU11SG5[objectsPositionU11SG5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U11SG5_check_Sphere <- tail(SphereU11SG5, n = 1)

U11SG5_check_total <- rbind(U11SG5_check_Cube2, U11SG5_check_Cylinder,
                            U11SG5_check_Cube, U11SG5_check_Cylinder2,
                            U11SG5_check_Sphere)


## ------------------- U12SG5 -------------------
## copio dati da JSON
U12SG5 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_05_11_39_23_U12.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU12SG5<-U12SG5[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU12SG5<-U12SG5[[2]][[1]]
objectsPositionU12SG5$Utente <- "U12SG"

## creo tabella per ogni oggetto
Cube2U12SG5 <- objectsPositionU12SG5[objectsPositionU12SG5$objPosition %like% "Cube2", ]
Cube2U12SG5$Utente <- "U12SG"
## controllo ultima posizione
U12SG5_check_Cube2 <- tail(Cube2U12SG5, n = 1)

CylinderU12SG5 <- objectsPositionU12SG5[objectsPositionU12SG5$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U12SG5_check_Cylinder <- tail(CylinderU12SG5, n = 1)

CubeU12SG5 <- objectsPositionU12SG5[objectsPositionU12SG5$objPosition %like% "Cube", ]
## controllo ultima posizione
U12SG5_check_Cube <- tail(CubeU12SG5, n = 1)

Cylinder2U12SG5 <- objectsPositionU12SG5[objectsPositionU12SG5$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U12SG5_check_Cylinder2 <- tail(Cylinder2U12SG5, n = 1)

SphereU12SG5 <- objectsPositionU12SG5[objectsPositionU12SG5$objPosition %like% "Sphere", ]
## controllo ultima posizione
U12SG5_check_Sphere <- tail(SphereU12SG5, n = 1)

U12SG5_check_total <- rbind(U12SG5_check_Cube2, U12SG5_check_Cylinder,
                            U12SG5_check_Cube, U12SG5_check_Cylinder2,
                            U12SG5_check_Sphere)


## tabella finale
SG5 <- rbind(U01SG5_check_total, U02SG5_check_total, U03SG5_check_total,
             U04SG5_check_total, U05SG5_check_total, U06SG5_check_total,
             U07SG5_check_total, U08SG5_check_total, U09SG5_check_total,
             U10SG5_check_total, U11SG5_check_total, U12SG5_check_total)