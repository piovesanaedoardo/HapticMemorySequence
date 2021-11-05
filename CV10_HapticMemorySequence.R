library("jsonlite")
library("dplyr")
library("tidyr")
library("tidyverse")
library("data.table")

## ------------------- U01CV10 -------------------
## copio dati da JSON
U01CV10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_03_14_02_05_U01.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU01CV10<-U01CV10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU01CV10<-U01CV10[[2]][[1]]
objectsPositionU01CV10$Utente <- "U01CV"

## creo tabella per ogni oggetto
Cube2U01CV10 <- objectsPositionU01CV10[objectsPositionU01CV10$objPosition %like% "Cube2", ]
Cube2U01CV10$Utente <- "U01CV"
## controllo ultima posizione
U01CV10_check_Cube2 <- tail(Cube2U01CV10, n = 1)

CapsuleU01CV10 <- objectsPositionU01CV10[objectsPositionU01CV10$objPosition %like% "Capsule", ]
CapsuleU01CV10$Utente <- "U01CV"
## controllo ultima posizione
U01CV10_check_Capsule <- tail(CapsuleU01CV10, n = 1)

Cube_1U01CV10 <- objectsPositionU01CV10[objectsPositionU01CV10$objPosition %like% "Cube 1", ]
Cube_1U01CV10$Utente <- "U01CV"
## controllo ultima posizione
U01CV10_check_Cube_1 <- tail(Cube_1U01CV10, n = 1)

CubeU01CV10 <- objectsPositionU01CV10[objectsPositionU01CV10$objPosition %like% "Cube", ]
## controllo ultima posizione
U01CV10_check_Cube <- tail(CubeU01CV10, n = 1)

CylinderU01CV10 <- objectsPositionU01CV10[objectsPositionU01CV10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U01CV10_check_Cylinder <- tail(CylinderU01CV10, n = 1)

EggU01CV10 <- objectsPositionU01CV10[objectsPositionU01CV10$objPosition %like% "Egg", ]
## controllo ultima posizione
U01CV10_check_Egg <- tail(EggU01CV10, n = 1)

Capsule2U01CV10 <- objectsPositionU01CV10[objectsPositionU01CV10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U01CV10_check_Capsule2 <- tail(Capsule2U01CV10, n = 1)

Cylinder2U01CV10 <- objectsPositionU01CV10[objectsPositionU01CV10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U01CV10_check_Cylinder2 <- tail(Cylinder2U01CV10, n = 1)

SphereU01CV10 <- objectsPositionU01CV10[objectsPositionU01CV10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U01CV10_check_Sphere <- tail(SphereU01CV10, n = 1)

Cylinder_3U01CV10 <- objectsPositionU01CV10[objectsPositionU01CV10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U01CV10_check_Cylinder_3 <- tail(Cylinder_3U01CV10, n = 1)

U01CV10_check_total <- rbind(U01CV10_check_Cube2, U01CV10_check_Capsule, U01CV10_check_Cube_1,
                             U01CV10_check_Cube, U01CV10_check_Cylinder, U01CV10_check_Egg, 
                             U01CV10_check_Capsule2, U01CV10_check_Cylinder2, U01CV10_check_Sphere, 
                             U01CV10_check_Cylinder_3)


## ------------------- U02CV10 -------------------
## copio dati da JSON
U02CV10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_03_15_30_12_U02.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU02CV10<-U02CV10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU02CV10<-U02CV10[[2]][[1]]
objectsPositionU02CV10$Utente <- "U02CV"

## creo tabella per ogni oggetto
Cube2U02CV10 <- objectsPositionU02CV10[objectsPositionU02CV10$objPosition %like% "Cube2", ]
Cube2U02CV10$Utente <- "U02CV"
## controllo ultima posizione
U02CV10_check_Cube2 <- tail(Cube2U02CV10, n = 1)

CapsuleU02CV10 <- objectsPositionU02CV10[objectsPositionU02CV10$objPosition %like% "Capsule", ]
CapsuleU02CV10$Utente <- "U02CV"
## controllo ultima posizione
U02CV10_check_Capsule <- tail(CapsuleU02CV10, n = 1)

Cube_1U02CV10 <- objectsPositionU02CV10[objectsPositionU02CV10$objPosition %like% "Cube 1", ]
Cube_1U02CV10$Utente <- "U02CV"
## controllo ultima posizione
U02CV10_check_Cube_1 <- tail(Cube_1U02CV10, n = 1)

CubeU02CV10 <- objectsPositionU02CV10[objectsPositionU02CV10$objPosition %like% "Cube", ]
## controllo ultima posizione
U02CV10_check_Cube <- tail(CubeU02CV10, n = 1)

CylinderU02CV10 <- objectsPositionU02CV10[objectsPositionU02CV10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U02CV10_check_Cylinder <- tail(CylinderU02CV10, n = 1)

EggU02CV10 <- objectsPositionU02CV10[objectsPositionU02CV10$objPosition %like% "Egg", ]
## controllo ultima posizione
U02CV10_check_Egg <- tail(EggU02CV10, n = 1)

Capsule2U02CV10 <- objectsPositionU02CV10[objectsPositionU02CV10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U02CV10_check_Capsule2 <- tail(Capsule2U02CV10, n = 1)

Cylinder2U02CV10 <- objectsPositionU02CV10[objectsPositionU02CV10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U02CV10_check_Cylinder2 <- tail(Cylinder2U02CV10, n = 1)

SphereU02CV10 <- objectsPositionU02CV10[objectsPositionU02CV10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U02CV10_check_Sphere <- tail(SphereU02CV10, n = 1)

Cylinder_3U02CV10 <- objectsPositionU02CV10[objectsPositionU02CV10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U02CV10_check_Cylinder_3 <- tail(Cylinder_3U02CV10, n = 1)

U02CV10_check_total <- rbind(U02CV10_check_Cube2, U02CV10_check_Capsule, U02CV10_check_Cube_1,
                             U02CV10_check_Cube, U02CV10_check_Cylinder, U02CV10_check_Egg, 
                             U02CV10_check_Capsule2, U02CV10_check_Cylinder2, U02CV10_check_Sphere, 
                             U02CV10_check_Cylinder_3)


## ------------------- U03CV10 -------------------
## copio dati da JSON
U03CV10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_03_16_06_47_U03.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU03CV10<-U03CV10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU03CV10<-U03CV10[[2]][[1]]
objectsPositionU03CV10$Utente <- "U03CV"

## creo tabella per ogni oggetto
Cube2U03CV10 <- objectsPositionU03CV10[objectsPositionU03CV10$objPosition %like% "Cube2", ]
Cube2U03CV10$Utente <- "U03CV"
## controllo ultima posizione
U03CV10_check_Cube2 <- tail(Cube2U03CV10, n = 1)

CapsuleU03CV10 <- objectsPositionU03CV10[objectsPositionU03CV10$objPosition %like% "Capsule", ]
CapsuleU03CV10$Utente <- "U03CV"
## controllo ultima posizione
U03CV10_check_Capsule <- tail(CapsuleU03CV10, n = 1)

Cube_1U03CV10 <- objectsPositionU03CV10[objectsPositionU03CV10$objPosition %like% "Cube 1", ]
Cube_1U03CV10$Utente <- "U03CV"
## controllo ultima posizione
U03CV10_check_Cube_1 <- tail(Cube_1U03CV10, n = 1)

CubeU03CV10 <- objectsPositionU03CV10[objectsPositionU03CV10$objPosition %like% "Cube", ]
## controllo ultima posizione
U03CV10_check_Cube <- tail(CubeU03CV10, n = 1)

CylinderU03CV10 <- objectsPositionU03CV10[objectsPositionU03CV10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U03CV10_check_Cylinder <- tail(CylinderU03CV10, n = 1)

EggU03CV10 <- objectsPositionU03CV10[objectsPositionU03CV10$objPosition %like% "Egg", ]
## controllo ultima posizione
U03CV10_check_Egg <- tail(EggU03CV10, n = 1)

Capsule2U03CV10 <- objectsPositionU03CV10[objectsPositionU03CV10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U03CV10_check_Capsule2 <- tail(Capsule2U03CV10, n = 1)

Cylinder2U03CV10 <- objectsPositionU03CV10[objectsPositionU03CV10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U03CV10_check_Cylinder2 <- tail(Cylinder2U03CV10, n = 1)

SphereU03CV10 <- objectsPositionU03CV10[objectsPositionU03CV10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U03CV10_check_Sphere <- tail(SphereU03CV10, n = 1)

Cylinder_3U03CV10 <- objectsPositionU03CV10[objectsPositionU03CV10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U03CV10_check_Cylinder_3 <- tail(Cylinder_3U03CV10, n = 1)

U03CV10_check_total <- rbind(U03CV10_check_Cube2, U03CV10_check_Capsule, U03CV10_check_Cube_1,
                             U03CV10_check_Cube, U03CV10_check_Cylinder, U03CV10_check_Egg, 
                             U03CV10_check_Capsule2, U03CV10_check_Cylinder2, U03CV10_check_Sphere, 
                             U03CV10_check_Cylinder_3)


## ------------------- U04CV10 -------------------
## copio dati da JSON
U04CV10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_04_09_35_02_U04.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU04CV10<-U04CV10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU04CV10<-U04CV10[[2]][[1]]
objectsPositionU04CV10$Utente <- "U04CV"

## creo tabella per ogni oggetto
Cube2U04CV10 <- objectsPositionU04CV10[objectsPositionU04CV10$objPosition %like% "Cube2", ]
Cube2U04CV10$Utente <- "U04CV"
## controllo ultima posizione
U04CV10_check_Cube2 <- tail(Cube2U04CV10, n = 1)

CapsuleU04CV10 <- objectsPositionU04CV10[objectsPositionU04CV10$objPosition %like% "Capsule", ]
CapsuleU04CV10$Utente <- "U04CV"
## controllo ultima posizione
U04CV10_check_Capsule <- tail(CapsuleU04CV10, n = 1)

Cube_1U04CV10 <- objectsPositionU04CV10[objectsPositionU04CV10$objPosition %like% "Cube 1", ]
Cube_1U04CV10$Utente <- "U04CV"
## controllo ultima posizione
U04CV10_check_Cube_1 <- tail(Cube_1U04CV10, n = 1)

CubeU04CV10 <- objectsPositionU04CV10[objectsPositionU04CV10$objPosition %like% "Cube", ]
## controllo ultima posizione
U04CV10_check_Cube <- tail(CubeU04CV10, n = 1)

CylinderU04CV10 <- objectsPositionU04CV10[objectsPositionU04CV10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U04CV10_check_Cylinder <- tail(CylinderU04CV10, n = 1)

EggU04CV10 <- objectsPositionU04CV10[objectsPositionU04CV10$objPosition %like% "Egg", ]
## controllo ultima posizione
U04CV10_check_Egg <- tail(EggU04CV10, n = 1)

Capsule2U04CV10 <- objectsPositionU04CV10[objectsPositionU04CV10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U04CV10_check_Capsule2 <- tail(Capsule2U04CV10, n = 1)

Cylinder2U04CV10 <- objectsPositionU04CV10[objectsPositionU04CV10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U04CV10_check_Cylinder2 <- tail(Cylinder2U04CV10, n = 1)

SphereU04CV10 <- objectsPositionU04CV10[objectsPositionU04CV10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U04CV10_check_Sphere <- tail(SphereU04CV10, n = 1)

Cylinder_3U04CV10 <- objectsPositionU04CV10[objectsPositionU04CV10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U04CV10_check_Cylinder_3 <- tail(Cylinder_3U04CV10, n = 1)

U04CV10_check_total <- rbind(U04CV10_check_Cube2, U04CV10_check_Capsule, U04CV10_check_Cube_1,
                             U04CV10_check_Cube, U04CV10_check_Cylinder, U04CV10_check_Egg, 
                             U04CV10_check_Capsule2, U04CV10_check_Cylinder2, U04CV10_check_Sphere, 
                             U04CV10_check_Cylinder_3)


## ------------------- U05CV10 -------------------
## copio dati da JSON
U05CV10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_04_10_33_43_U05.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU05CV10<-U05CV10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU05CV10<-U05CV10[[2]][[1]]
objectsPositionU05CV10$Utente <- "U05CV"

## creo tabella per ogni oggetto
Cube2U05CV10 <- objectsPositionU05CV10[objectsPositionU05CV10$objPosition %like% "Cube2", ]
Cube2U05CV10$Utente <- "U05CV"
## controllo ultima posizione
U05CV10_check_Cube2 <- tail(Cube2U05CV10, n = 1)

CapsuleU05CV10 <- objectsPositionU05CV10[objectsPositionU05CV10$objPosition %like% "Capsule", ]
CapsuleU05CV10$Utente <- "U05CV"
## controllo ultima posizione
U05CV10_check_Capsule <- tail(CapsuleU05CV10, n = 1)

Cube_1U05CV10 <- objectsPositionU05CV10[objectsPositionU05CV10$objPosition %like% "Cube 1", ]
Cube_1U05CV10$Utente <- "U05CV"
## controllo ultima posizione
U05CV10_check_Cube_1 <- tail(Cube_1U05CV10, n = 1)

CubeU05CV10 <- objectsPositionU05CV10[objectsPositionU05CV10$objPosition %like% "Cube", ]
## controllo ultima posizione
U05CV10_check_Cube <- tail(CubeU05CV10, n = 1)

CylinderU05CV10 <- objectsPositionU05CV10[objectsPositionU05CV10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U05CV10_check_Cylinder <- tail(CylinderU05CV10, n = 1)

EggU05CV10 <- objectsPositionU05CV10[objectsPositionU05CV10$objPosition %like% "Egg", ]
## controllo ultima posizione
U05CV10_check_Egg <- tail(EggU05CV10, n = 1)

Capsule2U05CV10 <- objectsPositionU05CV10[objectsPositionU05CV10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U05CV10_check_Capsule2 <- tail(Capsule2U05CV10, n = 1)

Cylinder2U05CV10 <- objectsPositionU05CV10[objectsPositionU05CV10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U05CV10_check_Cylinder2 <- tail(Cylinder2U05CV10, n = 1)

SphereU05CV10 <- objectsPositionU05CV10[objectsPositionU05CV10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U05CV10_check_Sphere <- tail(SphereU05CV10, n = 1)

Cylinder_3U05CV10 <- objectsPositionU05CV10[objectsPositionU05CV10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U05CV10_check_Cylinder_3 <- tail(Cylinder_3U05CV10, n = 1)

U05CV10_check_total <- rbind(U05CV10_check_Cube2, U05CV10_check_Capsule, U05CV10_check_Cube_1,
                             U05CV10_check_Cube, U05CV10_check_Cylinder, U05CV10_check_Egg, 
                             U05CV10_check_Capsule2, U05CV10_check_Cylinder2, U05CV10_check_Sphere, 
                             U05CV10_check_Cylinder_3)


## ------------------- U06CV10 -------------------
## copio dati da JSON
U06CV10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_04_11_33_23_U06.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU06CV10<-U06CV10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU06CV10<-U06CV10[[2]][[1]]
objectsPositionU06CV10$Utente <- "U06CV"

## creo tabella per ogni oggetto
Cube2U06CV10 <- objectsPositionU06CV10[objectsPositionU06CV10$objPosition %like% "Cube2", ]
Cube2U06CV10$Utente <- "U06CV"
## controllo ultima posizione
U06CV10_check_Cube2 <- tail(Cube2U06CV10, n = 1)

CapsuleU06CV10 <- objectsPositionU06CV10[objectsPositionU06CV10$objPosition %like% "Capsule", ]
CapsuleU06CV10$Utente <- "U06CV"
## controllo ultima posizione
U06CV10_check_Capsule <- tail(CapsuleU06CV10, n = 1)

Cube_1U06CV10 <- objectsPositionU06CV10[objectsPositionU06CV10$objPosition %like% "Cube 1", ]
Cube_1U06CV10$Utente <- "U06CV"
## controllo ultima posizione
U06CV10_check_Cube_1 <- tail(Cube_1U06CV10, n = 1)

CubeU06CV10 <- objectsPositionU06CV10[objectsPositionU06CV10$objPosition %like% "Cube", ]
## controllo ultima posizione
U06CV10_check_Cube <- tail(CubeU06CV10, n = 1)

CylinderU06CV10 <- objectsPositionU06CV10[objectsPositionU06CV10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U06CV10_check_Cylinder <- tail(CylinderU06CV10, n = 1)

EggU06CV10 <- objectsPositionU06CV10[objectsPositionU06CV10$objPosition %like% "Egg", ]
## controllo ultima posizione
U06CV10_check_Egg <- tail(EggU06CV10, n = 1)

Capsule2U06CV10 <- objectsPositionU06CV10[objectsPositionU06CV10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U06CV10_check_Capsule2 <- tail(Capsule2U06CV10, n = 1)

Cylinder2U06CV10 <- objectsPositionU06CV10[objectsPositionU06CV10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U06CV10_check_Cylinder2 <- tail(Cylinder2U06CV10, n = 1)

SphereU06CV10 <- objectsPositionU06CV10[objectsPositionU06CV10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U06CV10_check_Sphere <- tail(SphereU06CV10, n = 1)

Cylinder_3U06CV10 <- objectsPositionU06CV10[objectsPositionU06CV10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U06CV10_check_Cylinder_3 <- tail(Cylinder_3U06CV10, n = 1)

U06CV10_check_total <- rbind(U06CV10_check_Cube2, U06CV10_check_Capsule, U06CV10_check_Cube_1,
                             U06CV10_check_Cube, U06CV10_check_Cylinder, U06CV10_check_Egg, 
                             U06CV10_check_Capsule2, U06CV10_check_Cylinder2, U06CV10_check_Sphere, 
                             U06CV10_check_Cylinder_3)


## ------------------- U07CV10 -------------------
## copio dati da JSON
U07CV10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_04_14_17_21_U07.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU07CV10<-U07CV10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU07CV10<-U07CV10[[2]][[1]]
objectsPositionU07CV10$Utente <- "U07CV"

## creo tabella per ogni oggetto
Cube2U07CV10 <- objectsPositionU07CV10[objectsPositionU07CV10$objPosition %like% "Cube2", ]
Cube2U07CV10$Utente <- "U07CV"
## controllo ultima posizione
U07CV10_check_Cube2 <- tail(Cube2U07CV10, n = 1)

CapsuleU07CV10 <- objectsPositionU07CV10[objectsPositionU07CV10$objPosition %like% "Capsule", ]
CapsuleU07CV10$Utente <- "U07CV"
## controllo ultima posizione
U07CV10_check_Capsule <- tail(CapsuleU07CV10, n = 1)

Cube_1U07CV10 <- objectsPositionU07CV10[objectsPositionU07CV10$objPosition %like% "Cube 1", ]
Cube_1U07CV10$Utente <- "U07CV"
## controllo ultima posizione
U07CV10_check_Cube_1 <- tail(Cube_1U07CV10, n = 1)

CubeU07CV10 <- objectsPositionU07CV10[objectsPositionU07CV10$objPosition %like% "Cube", ]
## controllo ultima posizione
U07CV10_check_Cube <- tail(CubeU07CV10, n = 1)

CylinderU07CV10 <- objectsPositionU07CV10[objectsPositionU07CV10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U07CV10_check_Cylinder <- tail(CylinderU07CV10, n = 1)

EggU07CV10 <- objectsPositionU07CV10[objectsPositionU07CV10$objPosition %like% "Egg", ]
## controllo ultima posizione
U07CV10_check_Egg <- tail(EggU07CV10, n = 1)

Capsule2U07CV10 <- objectsPositionU07CV10[objectsPositionU07CV10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U07CV10_check_Capsule2 <- tail(Capsule2U07CV10, n = 1)

Cylinder2U07CV10 <- objectsPositionU07CV10[objectsPositionU07CV10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U07CV10_check_Cylinder2 <- tail(Cylinder2U07CV10, n = 1)

SphereU07CV10 <- objectsPositionU07CV10[objectsPositionU07CV10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U07CV10_check_Sphere <- tail(SphereU07CV10, n = 1)

Cylinder_3U07CV10 <- objectsPositionU07CV10[objectsPositionU07CV10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U07CV10_check_Cylinder_3 <- tail(Cylinder_3U07CV10, n = 1)

U07CV10_check_total <- rbind(U07CV10_check_Cube2, U07CV10_check_Capsule, U07CV10_check_Cube_1,
                             U07CV10_check_Cube, U07CV10_check_Cylinder, U07CV10_check_Egg, 
                             U07CV10_check_Capsule2, U07CV10_check_Cylinder2, U07CV10_check_Sphere, 
                             U07CV10_check_Cylinder_3)


## ------------------- U08CV10 -------------------
## copio dati da JSON
U08CV10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_04_15_41_51_U08.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU08CV10<-U08CV10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU08CV10<-U08CV10[[2]][[1]]
objectsPositionU08CV10$Utente <- "U08CV"

## creo tabella per ogni oggetto
Cube2U08CV10 <- objectsPositionU08CV10[objectsPositionU08CV10$objPosition %like% "Cube2", ]
Cube2U08CV10$Utente <- "U08CV"
## controllo ultima posizione
U08CV10_check_Cube2 <- tail(Cube2U08CV10, n = 1)

CapsuleU08CV10 <- objectsPositionU08CV10[objectsPositionU08CV10$objPosition %like% "Capsule", ]
CapsuleU08CV10$Utente <- "U08CV"
## controllo ultima posizione
U08CV10_check_Capsule <- tail(CapsuleU08CV10, n = 1)

Cube_1U08CV10 <- objectsPositionU08CV10[objectsPositionU08CV10$objPosition %like% "Cube 1", ]
Cube_1U08CV10$Utente <- "U08CV"
## controllo ultima posizione
U08CV10_check_Cube_1 <- tail(Cube_1U08CV10, n = 1)

CubeU08CV10 <- objectsPositionU08CV10[objectsPositionU08CV10$objPosition %like% "Cube", ]
## controllo ultima posizione
U08CV10_check_Cube <- tail(CubeU08CV10, n = 1)

CylinderU08CV10 <- objectsPositionU08CV10[objectsPositionU08CV10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U08CV10_check_Cylinder <- tail(CylinderU08CV10, n = 1)

EggU08CV10 <- objectsPositionU08CV10[objectsPositionU08CV10$objPosition %like% "Egg", ]
## controllo ultima posizione
U08CV10_check_Egg <- tail(EggU08CV10, n = 1)

Capsule2U08CV10 <- objectsPositionU08CV10[objectsPositionU08CV10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U08CV10_check_Capsule2 <- tail(Capsule2U08CV10, n = 1)

Cylinder2U08CV10 <- objectsPositionU08CV10[objectsPositionU08CV10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U08CV10_check_Cylinder2 <- tail(Cylinder2U08CV10, n = 1)

SphereU08CV10 <- objectsPositionU08CV10[objectsPositionU08CV10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U08CV10_check_Sphere <- tail(SphereU08CV10, n = 1)

Cylinder_3U08CV10 <- objectsPositionU08CV10[objectsPositionU08CV10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U08CV10_check_Cylinder_3 <- tail(Cylinder_3U08CV10, n = 1)

U08CV10_check_total <- rbind(U08CV10_check_Cube2, U08CV10_check_Capsule, U08CV10_check_Cube_1,
                             U08CV10_check_Cube, U08CV10_check_Cylinder, U08CV10_check_Egg, 
                             U08CV10_check_Capsule2, U08CV10_check_Cylinder2, U08CV10_check_Sphere, 
                             U08CV10_check_Cylinder_3)


## ------------------- U09CV10 -------------------
## copio dati da JSON
U09CV10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_04_16_24_37_U09.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU09CV10<-U09CV10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU09CV10<-U09CV10[[2]][[1]]
objectsPositionU09CV10$Utente <- "U09CV"

## creo tabella per ogni oggetto
Cube2U09CV10 <- objectsPositionU09CV10[objectsPositionU09CV10$objPosition %like% "Cube2", ]
Cube2U09CV10$Utente <- "U09CV"
## controllo ultima posizione
U09CV10_check_Cube2 <- tail(Cube2U09CV10, n = 1)

CapsuleU09CV10 <- objectsPositionU09CV10[objectsPositionU09CV10$objPosition %like% "Capsule", ]
CapsuleU09CV10$Utente <- "U09CV"
## controllo ultima posizione
U09CV10_check_Capsule <- tail(CapsuleU09CV10, n = 1)

Cube_1U09CV10 <- objectsPositionU09CV10[objectsPositionU09CV10$objPosition %like% "Cube 1", ]
Cube_1U09CV10$Utente <- "U09CV"
## controllo ultima posizione
U09CV10_check_Cube_1 <- tail(Cube_1U09CV10, n = 1)

CubeU09CV10 <- objectsPositionU09CV10[objectsPositionU09CV10$objPosition %like% "Cube", ]
## controllo ultima posizione
U09CV10_check_Cube <- tail(CubeU09CV10, n = 1)

CylinderU09CV10 <- objectsPositionU09CV10[objectsPositionU09CV10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U09CV10_check_Cylinder <- tail(CylinderU09CV10, n = 1)

EggU09CV10 <- objectsPositionU09CV10[objectsPositionU09CV10$objPosition %like% "Egg", ]
## controllo ultima posizione
U09CV10_check_Egg <- tail(EggU09CV10, n = 1)

Capsule2U09CV10 <- objectsPositionU09CV10[objectsPositionU09CV10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U09CV10_check_Capsule2 <- tail(Capsule2U09CV10, n = 1)

Cylinder2U09CV10 <- objectsPositionU09CV10[objectsPositionU09CV10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U09CV10_check_Cylinder2 <- tail(Cylinder2U09CV10, n = 1)

SphereU09CV10 <- objectsPositionU09CV10[objectsPositionU09CV10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U09CV10_check_Sphere <- tail(SphereU09CV10, n = 1)

Cylinder_3U09CV10 <- objectsPositionU09CV10[objectsPositionU09CV10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U09CV10_check_Cylinder_3 <- tail(Cylinder_3U09CV10, n = 1)

U09CV10_check_total <- rbind(U09CV10_check_Cube2, U09CV10_check_Capsule, U09CV10_check_Cube_1,
                             U09CV10_check_Cube, U09CV10_check_Cylinder, U09CV10_check_Egg, 
                             U09CV10_check_Capsule2, U09CV10_check_Cylinder2, U09CV10_check_Sphere, 
                             U09CV10_check_Cylinder_3)


## ------------------- U10CV10 -------------------
## copio dati da JSON
U10CV10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_05_09_53_01_U10.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU10CV10<-U10CV10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU10CV10<-U10CV10[[2]][[1]]
objectsPositionU10CV10$Utente <- "U10CV"

## creo tabella per ogni oggetto
Cube2U10CV10 <- objectsPositionU10CV10[objectsPositionU10CV10$objPosition %like% "Cube2", ]
Cube2U10CV10$Utente <- "U10CV"
## controllo ultima posizione
U10CV10_check_Cube2 <- tail(Cube2U10CV10, n = 1)

CapsuleU10CV10 <- objectsPositionU10CV10[objectsPositionU10CV10$objPosition %like% "Capsule", ]
CapsuleU10CV10$Utente <- "U10CV"
## controllo ultima posizione
U10CV10_check_Capsule <- tail(CapsuleU10CV10, n = 1)

Cube_1U10CV10 <- objectsPositionU10CV10[objectsPositionU10CV10$objPosition %like% "Cube 1", ]
Cube_1U10CV10$Utente <- "U10CV"
## controllo ultima posizione
U10CV10_check_Cube_1 <- tail(Cube_1U10CV10, n = 1)

CubeU10CV10 <- objectsPositionU10CV10[objectsPositionU10CV10$objPosition %like% "Cube", ]
## controllo ultima posizione
U10CV10_check_Cube <- tail(CubeU10CV10, n = 1)

CylinderU10CV10 <- objectsPositionU10CV10[objectsPositionU10CV10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U10CV10_check_Cylinder <- tail(CylinderU10CV10, n = 1)

EggU10CV10 <- objectsPositionU10CV10[objectsPositionU10CV10$objPosition %like% "Egg", ]
## controllo ultima posizione
U10CV10_check_Egg <- tail(EggU10CV10, n = 1)

Capsule2U10CV10 <- objectsPositionU10CV10[objectsPositionU10CV10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U10CV10_check_Capsule2 <- tail(Capsule2U10CV10, n = 1)

Cylinder2U10CV10 <- objectsPositionU10CV10[objectsPositionU10CV10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U10CV10_check_Cylinder2 <- tail(Cylinder2U10CV10, n = 1)

SphereU10CV10 <- objectsPositionU10CV10[objectsPositionU10CV10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U10CV10_check_Sphere <- tail(SphereU10CV10, n = 1)

Cylinder_3U10CV10 <- objectsPositionU10CV10[objectsPositionU10CV10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U10CV10_check_Cylinder_3 <- tail(Cylinder_3U10CV10, n = 1)

U10CV10_check_total <- rbind(U10CV10_check_Cube2, U10CV10_check_Capsule, U10CV10_check_Cube_1,
                             U10CV10_check_Cube, U10CV10_check_Cylinder, U10CV10_check_Egg, 
                             U10CV10_check_Capsule2, U10CV10_check_Cylinder2, U10CV10_check_Sphere, 
                             U10CV10_check_Cylinder_3)


## ------------------- U11CV10 -------------------
## copio dati da JSON
U11CV10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_05_11_00_49_U11.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU11CV10<-U11CV10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU11CV10<-U11CV10[[2]][[1]]
objectsPositionU11CV10$Utente <- "U11CV"

## creo tabella per ogni oggetto
Cube2U11CV10 <- objectsPositionU11CV10[objectsPositionU11CV10$objPosition %like% "Cube2", ]
Cube2U11CV10$Utente <- "U11CV"
## controllo ultima posizione
U11CV10_check_Cube2 <- tail(Cube2U11CV10, n = 1)

CapsuleU11CV10 <- objectsPositionU11CV10[objectsPositionU11CV10$objPosition %like% "Capsule", ]
CapsuleU11CV10$Utente <- "U11CV"
## controllo ultima posizione
U11CV10_check_Capsule <- tail(CapsuleU11CV10, n = 1)

Cube_1U11CV10 <- objectsPositionU11CV10[objectsPositionU11CV10$objPosition %like% "Cube 1", ]
Cube_1U11CV10$Utente <- "U11CV"
## controllo ultima posizione
U11CV10_check_Cube_1 <- tail(Cube_1U11CV10, n = 1)

CubeU11CV10 <- objectsPositionU11CV10[objectsPositionU11CV10$objPosition %like% "Cube", ]
## controllo ultima posizione
U11CV10_check_Cube <- tail(CubeU11CV10, n = 1)

CylinderU11CV10 <- objectsPositionU11CV10[objectsPositionU11CV10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U11CV10_check_Cylinder <- tail(CylinderU11CV10, n = 1)

EggU11CV10 <- objectsPositionU11CV10[objectsPositionU11CV10$objPosition %like% "Egg", ]
## controllo ultima posizione
U11CV10_check_Egg <- tail(EggU11CV10, n = 1)

Capsule2U11CV10 <- objectsPositionU11CV10[objectsPositionU11CV10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U11CV10_check_Capsule2 <- tail(Capsule2U11CV10, n = 1)

Cylinder2U11CV10 <- objectsPositionU11CV10[objectsPositionU11CV10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U11CV10_check_Cylinder2 <- tail(Cylinder2U11CV10, n = 1)

SphereU11CV10 <- objectsPositionU11CV10[objectsPositionU11CV10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U11CV10_check_Sphere <- tail(SphereU11CV10, n = 1)

Cylinder_3U11CV10 <- objectsPositionU11CV10[objectsPositionU11CV10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U11CV10_check_Cylinder_3 <- tail(Cylinder_3U11CV10, n = 1)

U11CV10_check_total <- rbind(U11CV10_check_Cube2, U11CV10_check_Capsule, U11CV10_check_Cube_1,
                             U11CV10_check_Cube, U11CV10_check_Cylinder, U11CV10_check_Egg, 
                             U11CV10_check_Capsule2, U11CV10_check_Cylinder2, U11CV10_check_Sphere, 
                             U11CV10_check_Cylinder_3)


## ------------------- U12CV10 -------------------
## copio dati da JSON
U12CV10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/CV/HapticMemorySequenceLog_2021_11_05_11_53_07_U12.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU12CV10<-U12CV10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU12CV10<-U12CV10[[2]][[1]]
objectsPositionU12CV10$Utente <- "U12CV"

## creo tabella per ogni oggetto
Cube2U12CV10 <- objectsPositionU12CV10[objectsPositionU12CV10$objPosition %like% "Cube2", ]
Cube2U12CV10$Utente <- "U12CV"
## controllo ultima posizione
U12CV10_check_Cube2 <- tail(Cube2U12CV10, n = 1)

CapsuleU12CV10 <- objectsPositionU12CV10[objectsPositionU12CV10$objPosition %like% "Capsule", ]
CapsuleU12CV10$Utente <- "U12CV"
## controllo ultima posizione
U12CV10_check_Capsule <- tail(CapsuleU12CV10, n = 1)

Cube_1U12CV10 <- objectsPositionU12CV10[objectsPositionU12CV10$objPosition %like% "Cube 1", ]
Cube_1U12CV10$Utente <- "U12CV"
## controllo ultima posizione
U12CV10_check_Cube_1 <- tail(Cube_1U12CV10, n = 1)

CubeU12CV10 <- objectsPositionU12CV10[objectsPositionU12CV10$objPosition %like% "Cube", ]
## controllo ultima posizione
U12CV10_check_Cube <- tail(CubeU12CV10, n = 1)

CylinderU12CV10 <- objectsPositionU12CV10[objectsPositionU12CV10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U12CV10_check_Cylinder <- tail(CylinderU12CV10, n = 1)

EggU12CV10 <- objectsPositionU12CV10[objectsPositionU12CV10$objPosition %like% "Egg", ]
## controllo ultima posizione
U12CV10_check_Egg <- tail(EggU12CV10, n = 1)

Capsule2U12CV10 <- objectsPositionU12CV10[objectsPositionU12CV10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U12CV10_check_Capsule2 <- tail(Capsule2U12CV10, n = 1)

Cylinder2U12CV10 <- objectsPositionU12CV10[objectsPositionU12CV10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U12CV10_check_Cylinder2 <- tail(Cylinder2U12CV10, n = 1)

SphereU12CV10 <- objectsPositionU12CV10[objectsPositionU12CV10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U12CV10_check_Sphere <- tail(SphereU12CV10, n = 1)

Cylinder_3U12CV10 <- objectsPositionU12CV10[objectsPositionU12CV10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U12CV10_check_Cylinder_3 <- tail(Cylinder_3U12CV10, n = 1)

U12CV10_check_total <- rbind(U12CV10_check_Cube2, U12CV10_check_Capsule, U12CV10_check_Cube_1,
                             U12CV10_check_Cube, U12CV10_check_Cylinder, U12CV10_check_Egg, 
                             U12CV10_check_Capsule2, U12CV10_check_Cylinder2, U12CV10_check_Sphere, 
                             U12CV10_check_Cylinder_3)


## tabella finale
SG10 <- rbind(U01SG10_check_total, U02SG10_check_total, U03SG10_check_total,
             U04SG10_check_total, U05SG10_check_total, U06SG10_check_total,
             U07SG10_check_total, U08SG10_check_total, U09SG10_check_total,
             U10SG10_check_total, U11SG10_check_total, U12SG10_check_total)