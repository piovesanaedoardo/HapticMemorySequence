library("jsonlite")
library("dplyr")
library("tidyr")
library("tidyverse")
library("data.table")

## ------------------- U01SG10 -------------------
## copio dati da JSON
U01SG10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_03_14_15_40_U01.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU01SG10<-U01SG10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU01SG10<-U01SG10[[2]][[1]]
objectsPositionU01SG10$Utente <- "U01SG"

## creo tabella per ogni oggetto
Cube2U01SG10 <- objectsPositionU01SG10[objectsPositionU01SG10$objPosition %like% "Cube2", ]
Cube2U01SG10$Utente <- "U01SG"
## controllo ultima posizione
U01SG10_check_Cube2 <- tail(Cube2U01SG10, n = 1)

CapsuleU01SG10 <- objectsPositionU01SG10[objectsPositionU01SG10$objPosition %like% "Capsule", ]
CapsuleU01SG10$Utente <- "U01SG"
## controllo ultima posizione
U01SG10_check_Capsule <- tail(CapsuleU01SG10, n = 1)

Cube_1U01SG10 <- objectsPositionU01SG10[objectsPositionU01SG10$objPosition %like% "Cube 1", ]
Cube_1U01SG10$Utente <- "U01SG"
## controllo ultima posizione
U01SG10_check_Cube_1 <- tail(Cube_1U01SG10, n = 1)

CubeU01SG10 <- objectsPositionU01SG10[objectsPositionU01SG10$objPosition %like% "Cube", ]
## controllo ultima posizione
U01SG10_check_Cube <- tail(CubeU01SG10, n = 1)

CylinderU01SG10 <- objectsPositionU01SG10[objectsPositionU01SG10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U01SG10_check_Cylinder <- tail(CylinderU01SG10, n = 1)

EggU01SG10 <- objectsPositionU01SG10[objectsPositionU01SG10$objPosition %like% "Egg", ]
## controllo ultima posizione
U01SG10_check_Egg <- tail(EggU01SG10, n = 1)

Capsule2U01SG10 <- objectsPositionU01SG10[objectsPositionU01SG10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U01SG10_check_Capsule2 <- tail(Capsule2U01SG10, n = 1)

Cylinder2U01SG10 <- objectsPositionU01SG10[objectsPositionU01SG10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U01SG10_check_Cylinder2 <- tail(Cylinder2U01SG10, n = 1)

SphereU01SG10 <- objectsPositionU01SG10[objectsPositionU01SG10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U01SG10_check_Sphere <- tail(SphereU01SG10, n = 1)

Cylinder_3U01SG10 <- objectsPositionU01SG10[objectsPositionU01SG10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U01SG10_check_Cylinder_3 <- tail(Cylinder_3U01SG10, n = 1)

U01SG10_check_total <- rbind(U01SG10_check_Cube2, U01SG10_check_Capsule, U01SG10_check_Cube_1,
                             U01SG10_check_Cube, U01SG10_check_Cylinder, U01SG10_check_Egg, 
                             U01SG10_check_Capsule2, U01SG10_check_Cylinder2, U01SG10_check_Sphere, 
                             U01SG10_check_Cylinder_3)


## ------------------- U02SG10 -------------------
## copio dati da JSON
U02SG10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_03_15_15_03_U02.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU02SG10<-U02SG10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU02SG10<-U02SG10[[2]][[1]]
objectsPositionU02SG10$Utente <- "U02SG"

## creo tabella per ogni oggetto
Cube2U02SG10 <- objectsPositionU02SG10[objectsPositionU02SG10$objPosition %like% "Cube2", ]
Cube2U02SG10$Utente <- "U02SG"
## controllo ultima posizione
U02SG10_check_Cube2 <- tail(Cube2U02SG10, n = 1)

CapsuleU02SG10 <- objectsPositionU02SG10[objectsPositionU02SG10$objPosition %like% "Capsule", ]
CapsuleU02SG10$Utente <- "U02SG"
## controllo ultima posizione
U02SG10_check_Capsule <- tail(CapsuleU02SG10, n = 1)

Cube_1U02SG10 <- objectsPositionU02SG10[objectsPositionU02SG10$objPosition %like% "Cube 1", ]
Cube_1U02SG10$Utente <- "U02SG"
## controllo ultima posizione
U02SG10_check_Cube_1 <- tail(Cube_1U02SG10, n = 1)

CubeU02SG10 <- objectsPositionU02SG10[objectsPositionU02SG10$objPosition %like% "Cube", ]
## controllo ultima posizione
U02SG10_check_Cube <- tail(CubeU02SG10, n = 1)

CylinderU02SG10 <- objectsPositionU02SG10[objectsPositionU02SG10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U02SG10_check_Cylinder <- tail(CylinderU02SG10, n = 1)

EggU02SG10 <- objectsPositionU02SG10[objectsPositionU02SG10$objPosition %like% "Egg", ]
## controllo ultima posizione
U02SG10_check_Egg <- tail(EggU02SG10, n = 1)

Capsule2U02SG10 <- objectsPositionU02SG10[objectsPositionU02SG10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U02SG10_check_Capsule2 <- tail(Capsule2U02SG10, n = 1)

Cylinder2U02SG10 <- objectsPositionU02SG10[objectsPositionU02SG10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U02SG10_check_Cylinder2 <- tail(Cylinder2U02SG10, n = 1)

SphereU02SG10 <- objectsPositionU02SG10[objectsPositionU02SG10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U02SG10_check_Sphere <- tail(SphereU02SG10, n = 1)

Cylinder_3U02SG10 <- objectsPositionU02SG10[objectsPositionU02SG10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U02SG10_check_Cylinder_3 <- tail(Cylinder_3U02SG10, n = 1)

U02SG10_check_total <- rbind(U02SG10_check_Cube2, U02SG10_check_Capsule, U02SG10_check_Cube_1,
                             U02SG10_check_Cube, U02SG10_check_Cylinder, U02SG10_check_Egg, 
                             U02SG10_check_Capsule2, U02SG10_check_Cylinder2, U02SG10_check_Sphere, 
                             U02SG10_check_Cylinder_3)


## ------------------- U03SG10 -------------------
## copio dati da JSON
U03SG10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_03_16_20_51_U03.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU03SG10<-U03SG10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU03SG10<-U03SG10[[2]][[1]]
objectsPositionU03SG10$Utente <- "U03SG"

## creo tabella per ogni oggetto
Cube2U03SG10 <- objectsPositionU03SG10[objectsPositionU03SG10$objPosition %like% "Cube2", ]
Cube2U03SG10$Utente <- "U03SG"
## controllo ultima posizione
U03SG10_check_Cube2 <- tail(Cube2U03SG10, n = 1)

CapsuleU03SG10 <- objectsPositionU03SG10[objectsPositionU03SG10$objPosition %like% "Capsule", ]
CapsuleU03SG10$Utente <- "U03SG"
## controllo ultima posizione
U03SG10_check_Capsule <- tail(CapsuleU03SG10, n = 1)

Cube_1U03SG10 <- objectsPositionU03SG10[objectsPositionU03SG10$objPosition %like% "Cube 1", ]
Cube_1U03SG10$Utente <- "U03SG"
## controllo ultima posizione
U03SG10_check_Cube_1 <- tail(Cube_1U03SG10, n = 1)

CubeU03SG10 <- objectsPositionU03SG10[objectsPositionU03SG10$objPosition %like% "Cube", ]
## controllo ultima posizione
U03SG10_check_Cube <- tail(CubeU03SG10, n = 1)

CylinderU03SG10 <- objectsPositionU03SG10[objectsPositionU03SG10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U03SG10_check_Cylinder <- tail(CylinderU03SG10, n = 1)

EggU03SG10 <- objectsPositionU03SG10[objectsPositionU03SG10$objPosition %like% "Egg", ]
## controllo ultima posizione
U03SG10_check_Egg <- tail(EggU03SG10, n = 1)

Capsule2U03SG10 <- objectsPositionU03SG10[objectsPositionU03SG10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U03SG10_check_Capsule2 <- tail(Capsule2U03SG10, n = 1)

Cylinder2U03SG10 <- objectsPositionU03SG10[objectsPositionU03SG10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U03SG10_check_Cylinder2 <- tail(Cylinder2U03SG10, n = 1)

SphereU03SG10 <- objectsPositionU03SG10[objectsPositionU03SG10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U03SG10_check_Sphere <- tail(SphereU03SG10, n = 1)

Cylinder_3U03SG10 <- objectsPositionU03SG10[objectsPositionU03SG10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U03SG10_check_Cylinder_3 <- tail(Cylinder_3U03SG10, n = 1)

U03SG10_check_total <- rbind(U03SG10_check_Cube2, U03SG10_check_Capsule, U03SG10_check_Cube_1,
                             U03SG10_check_Cube, U03SG10_check_Cylinder, U03SG10_check_Egg, 
                             U03SG10_check_Capsule2, U03SG10_check_Cylinder2, U03SG10_check_Sphere, 
                             U03SG10_check_Cylinder_3)


## ------------------- U04SG10 -------------------
## copio dati da JSON
U04SG10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_04_09_53_28_U04.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU04SG10<-U04SG10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU04SG10<-U04SG10[[2]][[1]]
objectsPositionU04SG10$Utente <- "U04SG"

## creo tabella per ogni oggetto
Cube2U04SG10 <- objectsPositionU04SG10[objectsPositionU04SG10$objPosition %like% "Cube2", ]
Cube2U04SG10$Utente <- "U04SG"
## controllo ultima posizione
U04SG10_check_Cube2 <- tail(Cube2U04SG10, n = 1)

CapsuleU04SG10 <- objectsPositionU04SG10[objectsPositionU04SG10$objPosition %like% "Capsule", ]
CapsuleU04SG10$Utente <- "U04SG"
## controllo ultima posizione
U04SG10_check_Capsule <- tail(CapsuleU04SG10, n = 1)

Cube_1U04SG10 <- objectsPositionU04SG10[objectsPositionU04SG10$objPosition %like% "Cube 1", ]
Cube_1U04SG10$Utente <- "U04SG"
## controllo ultima posizione
U04SG10_check_Cube_1 <- tail(Cube_1U04SG10, n = 1)

CubeU04SG10 <- objectsPositionU04SG10[objectsPositionU04SG10$objPosition %like% "Cube", ]
## controllo ultima posizione
U04SG10_check_Cube <- tail(CubeU04SG10, n = 1)

CylinderU04SG10 <- objectsPositionU04SG10[objectsPositionU04SG10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U04SG10_check_Cylinder <- tail(CylinderU04SG10, n = 1)

EggU04SG10 <- objectsPositionU04SG10[objectsPositionU04SG10$objPosition %like% "Egg", ]
## controllo ultima posizione
U04SG10_check_Egg <- tail(EggU04SG10, n = 1)

Capsule2U04SG10 <- objectsPositionU04SG10[objectsPositionU04SG10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U04SG10_check_Capsule2 <- tail(Capsule2U04SG10, n = 1)

Cylinder2U04SG10 <- objectsPositionU04SG10[objectsPositionU04SG10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U04SG10_check_Cylinder2 <- tail(Cylinder2U04SG10, n = 1)

SphereU04SG10 <- objectsPositionU04SG10[objectsPositionU04SG10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U04SG10_check_Sphere <- tail(SphereU04SG10, n = 1)

Cylinder_3U04SG10 <- objectsPositionU04SG10[objectsPositionU04SG10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U04SG10_check_Cylinder_3 <- tail(Cylinder_3U04SG10, n = 1)

U04SG10_check_total <- rbind(U04SG10_check_Cube2, U04SG10_check_Capsule, U04SG10_check_Cube_1,
                             U04SG10_check_Cube, U04SG10_check_Cylinder, U04SG10_check_Egg, 
                             U04SG10_check_Capsule2, U04SG10_check_Cylinder2, U04SG10_check_Sphere, 
                             U04SG10_check_Cylinder_3)


## ------------------- U05SG10 -------------------
## copio dati da JSON
U05SG10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_04_10_46_06_U05.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU05SG10<-U05SG10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU05SG10<-U05SG10[[2]][[1]]
objectsPositionU05SG10$Utente <- "U05SG"

## creo tabella per ogni oggetto
Cube2U05SG10 <- objectsPositionU05SG10[objectsPositionU05SG10$objPosition %like% "Cube2", ]
Cube2U05SG10$Utente <- "U05SG"
## controllo ultima posizione
U05SG10_check_Cube2 <- tail(Cube2U05SG10, n = 1)

CapsuleU05SG10 <- objectsPositionU05SG10[objectsPositionU05SG10$objPosition %like% "Capsule", ]
CapsuleU05SG10$Utente <- "U05SG"
## controllo ultima posizione
U05SG10_check_Capsule <- tail(CapsuleU05SG10, n = 1)

Cube_1U05SG10 <- objectsPositionU05SG10[objectsPositionU05SG10$objPosition %like% "Cube 1", ]
Cube_1U05SG10$Utente <- "U05SG"
## controllo ultima posizione
U05SG10_check_Cube_1 <- tail(Cube_1U05SG10, n = 1)

CubeU05SG10 <- objectsPositionU05SG10[objectsPositionU05SG10$objPosition %like% "Cube", ]
## controllo ultima posizione
U05SG10_check_Cube <- tail(CubeU05SG10, n = 1)

CylinderU05SG10 <- objectsPositionU05SG10[objectsPositionU05SG10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U05SG10_check_Cylinder <- tail(CylinderU05SG10, n = 1)

EggU05SG10 <- objectsPositionU05SG10[objectsPositionU05SG10$objPosition %like% "Egg", ]
## controllo ultima posizione
U05SG10_check_Egg <- tail(EggU05SG10, n = 1)

Capsule2U05SG10 <- objectsPositionU05SG10[objectsPositionU05SG10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U05SG10_check_Capsule2 <- tail(Capsule2U05SG10, n = 1)

Cylinder2U05SG10 <- objectsPositionU05SG10[objectsPositionU05SG10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U05SG10_check_Cylinder2 <- tail(Cylinder2U05SG10, n = 1)

SphereU05SG10 <- objectsPositionU05SG10[objectsPositionU05SG10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U05SG10_check_Sphere <- tail(SphereU05SG10, n = 1)

Cylinder_3U05SG10 <- objectsPositionU05SG10[objectsPositionU05SG10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U05SG10_check_Cylinder_3 <- tail(Cylinder_3U05SG10, n = 1)

U05SG10_check_total <- rbind(U05SG10_check_Cube2, U05SG10_check_Capsule, U05SG10_check_Cube_1,
                             U05SG10_check_Cube, U05SG10_check_Cylinder, U05SG10_check_Egg, 
                             U05SG10_check_Capsule2, U05SG10_check_Cylinder2, U05SG10_check_Sphere, 
                             U05SG10_check_Cylinder_3)


## ------------------- U06SG10 -------------------
## copio dati da JSON
U06SG10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_04_11_22_54_U06.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU06SG10<-U06SG10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU06SG10<-U06SG10[[2]][[1]]
objectsPositionU06SG10$Utente <- "U06SG"

## creo tabella per ogni oggetto
Cube2U06SG10 <- objectsPositionU06SG10[objectsPositionU06SG10$objPosition %like% "Cube2", ]
Cube2U06SG10$Utente <- "U06SG"
## controllo ultima posizione
U06SG10_check_Cube2 <- tail(Cube2U06SG10, n = 1)

CapsuleU06SG10 <- objectsPositionU06SG10[objectsPositionU06SG10$objPosition %like% "Capsule", ]
CapsuleU06SG10$Utente <- "U06SG"
## controllo ultima posizione
U06SG10_check_Capsule <- tail(CapsuleU06SG10, n = 1)

Cube_1U06SG10 <- objectsPositionU06SG10[objectsPositionU06SG10$objPosition %like% "Cube 1", ]
Cube_1U06SG10$Utente <- "U06SG"
## controllo ultima posizione
U06SG10_check_Cube_1 <- tail(Cube_1U06SG10, n = 1)

CubeU06SG10 <- objectsPositionU06SG10[objectsPositionU06SG10$objPosition %like% "Cube", ]
## controllo ultima posizione
U06SG10_check_Cube <- tail(CubeU06SG10, n = 1)

CylinderU06SG10 <- objectsPositionU06SG10[objectsPositionU06SG10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U06SG10_check_Cylinder <- tail(CylinderU06SG10, n = 1)

EggU06SG10 <- objectsPositionU06SG10[objectsPositionU06SG10$objPosition %like% "Egg", ]
## controllo ultima posizione
U06SG10_check_Egg <- tail(EggU06SG10, n = 1)

Capsule2U06SG10 <- objectsPositionU06SG10[objectsPositionU06SG10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U06SG10_check_Capsule2 <- tail(Capsule2U06SG10, n = 1)

Cylinder2U06SG10 <- objectsPositionU06SG10[objectsPositionU06SG10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U06SG10_check_Cylinder2 <- tail(Cylinder2U06SG10, n = 1)

SphereU06SG10 <- objectsPositionU06SG10[objectsPositionU06SG10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U06SG10_check_Sphere <- tail(SphereU06SG10, n = 1)

Cylinder_3U06SG10 <- objectsPositionU06SG10[objectsPositionU06SG10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U06SG10_check_Cylinder_3 <- tail(Cylinder_3U06SG10, n = 1)

U06SG10_check_total <- rbind(U06SG10_check_Cube2, U06SG10_check_Capsule, U06SG10_check_Cube_1,
                             U06SG10_check_Cube, U06SG10_check_Cylinder, U06SG10_check_Egg, 
                             U06SG10_check_Capsule2, U06SG10_check_Cylinder2, U06SG10_check_Sphere, 
                             U06SG10_check_Cylinder_3)


## ------------------- U07SG10 -------------------
## copio dati da JSON
U07SG10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_04_14_33_53_U07.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU07SG10<-U07SG10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU07SG10<-U07SG10[[2]][[1]]
objectsPositionU07SG10$Utente <- "U07SG"

## creo tabella per ogni oggetto
Cube2U07SG10 <- objectsPositionU07SG10[objectsPositionU07SG10$objPosition %like% "Cube2", ]
Cube2U07SG10$Utente <- "U07SG"
## controllo ultima posizione
U07SG10_check_Cube2 <- tail(Cube2U07SG10, n = 1)

CapsuleU07SG10 <- objectsPositionU07SG10[objectsPositionU07SG10$objPosition %like% "Capsule", ]
CapsuleU07SG10$Utente <- "U07SG"
## controllo ultima posizione
U07SG10_check_Capsule <- tail(CapsuleU07SG10, n = 1)

Cube_1U07SG10 <- objectsPositionU07SG10[objectsPositionU07SG10$objPosition %like% "Cube 1", ]
Cube_1U07SG10$Utente <- "U07SG"
## controllo ultima posizione
U07SG10_check_Cube_1 <- tail(Cube_1U07SG10, n = 1)

CubeU07SG10 <- objectsPositionU07SG10[objectsPositionU07SG10$objPosition %like% "Cube", ]
## controllo ultima posizione
U07SG10_check_Cube <- tail(CubeU07SG10, n = 1)

CylinderU07SG10 <- objectsPositionU07SG10[objectsPositionU07SG10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U07SG10_check_Cylinder <- tail(CylinderU07SG10, n = 1)

EggU07SG10 <- objectsPositionU07SG10[objectsPositionU07SG10$objPosition %like% "Egg", ]
## controllo ultima posizione
U07SG10_check_Egg <- tail(EggU07SG10, n = 1)

Capsule2U07SG10 <- objectsPositionU07SG10[objectsPositionU07SG10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U07SG10_check_Capsule2 <- tail(Capsule2U07SG10, n = 1)

Cylinder2U07SG10 <- objectsPositionU07SG10[objectsPositionU07SG10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U07SG10_check_Cylinder2 <- tail(Cylinder2U07SG10, n = 1)

SphereU07SG10 <- objectsPositionU07SG10[objectsPositionU07SG10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U07SG10_check_Sphere <- tail(SphereU07SG10, n = 1)

Cylinder_3U07SG10 <- objectsPositionU07SG10[objectsPositionU07SG10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U07SG10_check_Cylinder_3 <- tail(Cylinder_3U07SG10, n = 1)

U07SG10_check_total <- rbind(U07SG10_check_Cube2, U07SG10_check_Capsule, U07SG10_check_Cube_1,
                             U07SG10_check_Cube, U07SG10_check_Cylinder, U07SG10_check_Egg, 
                             U07SG10_check_Capsule2, U07SG10_check_Cylinder2, U07SG10_check_Sphere, 
                             U07SG10_check_Cylinder_3)


## ------------------- U08SG10 -------------------
## copio dati da JSON
U08SG10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_04_15_27_17_U08.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU08SG10<-U08SG10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU08SG10<-U08SG10[[2]][[1]]
objectsPositionU08SG10$Utente <- "U08SG"

## creo tabella per ogni oggetto
Cube2U08SG10 <- objectsPositionU08SG10[objectsPositionU08SG10$objPosition %like% "Cube2", ]
Cube2U08SG10$Utente <- "U08SG"
## controllo ultima posizione
U08SG10_check_Cube2 <- tail(Cube2U08SG10, n = 1)

CapsuleU08SG10 <- objectsPositionU08SG10[objectsPositionU08SG10$objPosition %like% "Capsule", ]
CapsuleU08SG10$Utente <- "U08SG"
## controllo ultima posizione
U08SG10_check_Capsule <- tail(CapsuleU08SG10, n = 1)

Cube_1U08SG10 <- objectsPositionU08SG10[objectsPositionU08SG10$objPosition %like% "Cube 1", ]
Cube_1U08SG10$Utente <- "U08SG"
## controllo ultima posizione
U08SG10_check_Cube_1 <- tail(Cube_1U08SG10, n = 1)

CubeU08SG10 <- objectsPositionU08SG10[objectsPositionU08SG10$objPosition %like% "Cube", ]
## controllo ultima posizione
U08SG10_check_Cube <- tail(CubeU08SG10, n = 1)

CylinderU08SG10 <- objectsPositionU08SG10[objectsPositionU08SG10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U08SG10_check_Cylinder <- tail(CylinderU08SG10, n = 1)

EggU08SG10 <- objectsPositionU08SG10[objectsPositionU08SG10$objPosition %like% "Egg", ]
## controllo ultima posizione
U08SG10_check_Egg <- tail(EggU08SG10, n = 1)

Capsule2U08SG10 <- objectsPositionU08SG10[objectsPositionU08SG10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U08SG10_check_Capsule2 <- tail(Capsule2U08SG10, n = 1)

Cylinder2U08SG10 <- objectsPositionU08SG10[objectsPositionU08SG10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U08SG10_check_Cylinder2 <- tail(Cylinder2U08SG10, n = 1)

SphereU08SG10 <- objectsPositionU08SG10[objectsPositionU08SG10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U08SG10_check_Sphere <- tail(SphereU08SG10, n = 1)

Cylinder_3U08SG10 <- objectsPositionU08SG10[objectsPositionU08SG10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U08SG10_check_Cylinder_3 <- tail(Cylinder_3U08SG10, n = 1)

U08SG10_check_total <- rbind(U08SG10_check_Cube2, U08SG10_check_Capsule, U08SG10_check_Cube_1,
                             U08SG10_check_Cube, U08SG10_check_Cylinder, U08SG10_check_Egg, 
                             U08SG10_check_Capsule2, U08SG10_check_Cylinder2, U08SG10_check_Sphere, 
                             U08SG10_check_Cylinder_3)


## ------------------- U09SG10 -------------------
## copio dati da JSON
U09SG10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_04_16_38_29_U09.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU09SG10<-U09SG10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU09SG10<-U09SG10[[2]][[1]]
objectsPositionU09SG10$Utente <- "U09SG"

## creo tabella per ogni oggetto
Cube2U09SG10 <- objectsPositionU09SG10[objectsPositionU09SG10$objPosition %like% "Cube2", ]
Cube2U09SG10$Utente <- "U09SG"
## controllo ultima posizione
U09SG10_check_Cube2 <- tail(Cube2U09SG10, n = 1)

CapsuleU09SG10 <- objectsPositionU09SG10[objectsPositionU09SG10$objPosition %like% "Capsule", ]
CapsuleU09SG10$Utente <- "U09SG"
## controllo ultima posizione
U09SG10_check_Capsule <- tail(CapsuleU09SG10, n = 1)

Cube_1U09SG10 <- objectsPositionU09SG10[objectsPositionU09SG10$objPosition %like% "Cube 1", ]
Cube_1U09SG10$Utente <- "U09SG"
## controllo ultima posizione
U09SG10_check_Cube_1 <- tail(Cube_1U09SG10, n = 1)

CubeU09SG10 <- objectsPositionU09SG10[objectsPositionU09SG10$objPosition %like% "Cube", ]
## controllo ultima posizione
U09SG10_check_Cube <- tail(CubeU09SG10, n = 1)

CylinderU09SG10 <- objectsPositionU09SG10[objectsPositionU09SG10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U09SG10_check_Cylinder <- tail(CylinderU09SG10, n = 1)

EggU09SG10 <- objectsPositionU09SG10[objectsPositionU09SG10$objPosition %like% "Egg", ]
## controllo ultima posizione
U09SG10_check_Egg <- tail(EggU09SG10, n = 1)

Capsule2U09SG10 <- objectsPositionU09SG10[objectsPositionU09SG10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U09SG10_check_Capsule2 <- tail(Capsule2U09SG10, n = 1)

Cylinder2U09SG10 <- objectsPositionU09SG10[objectsPositionU09SG10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U09SG10_check_Cylinder2 <- tail(Cylinder2U09SG10, n = 1)

SphereU09SG10 <- objectsPositionU09SG10[objectsPositionU09SG10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U09SG10_check_Sphere <- tail(SphereU09SG10, n = 1)

Cylinder_3U09SG10 <- objectsPositionU09SG10[objectsPositionU09SG10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U09SG10_check_Cylinder_3 <- tail(Cylinder_3U09SG10, n = 1)

U09SG10_check_total <- rbind(U09SG10_check_Cube2, U09SG10_check_Capsule, U09SG10_check_Cube_1,
                             U09SG10_check_Cube, U09SG10_check_Cylinder, U09SG10_check_Egg, 
                             U09SG10_check_Capsule2, U09SG10_check_Cylinder2, U09SG10_check_Sphere, 
                             U09SG10_check_Cylinder_3)


## ------------------- U10SG10 -------------------
## copio dati da JSON
U10SG10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_05_09_40_50_U10.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU10SG10<-U10SG10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU10SG10<-U10SG10[[2]][[1]]
objectsPositionU10SG10$Utente <- "U10SG"

## creo tabella per ogni oggetto
Cube2U10SG10 <- objectsPositionU10SG10[objectsPositionU10SG10$objPosition %like% "Cube2", ]
Cube2U10SG10$Utente <- "U10SG"
## controllo ultima posizione
U10SG10_check_Cube2 <- tail(Cube2U10SG10, n = 1)

CapsuleU10SG10 <- objectsPositionU10SG10[objectsPositionU10SG10$objPosition %like% "Capsule", ]
CapsuleU10SG10$Utente <- "U10SG"
## controllo ultima posizione
U10SG10_check_Capsule <- tail(CapsuleU10SG10, n = 1)

Cube_1U10SG10 <- objectsPositionU10SG10[objectsPositionU10SG10$objPosition %like% "Cube 1", ]
Cube_1U10SG10$Utente <- "U10SG"
## controllo ultima posizione
U10SG10_check_Cube_1 <- tail(Cube_1U10SG10, n = 1)

CubeU10SG10 <- objectsPositionU10SG10[objectsPositionU10SG10$objPosition %like% "Cube", ]
## controllo ultima posizione
U10SG10_check_Cube <- tail(CubeU10SG10, n = 1)

CylinderU10SG10 <- objectsPositionU10SG10[objectsPositionU10SG10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U10SG10_check_Cylinder <- tail(CylinderU10SG10, n = 1)

EggU10SG10 <- objectsPositionU10SG10[objectsPositionU10SG10$objPosition %like% "Egg", ]
## controllo ultima posizione
U10SG10_check_Egg <- tail(EggU10SG10, n = 1)

Capsule2U10SG10 <- objectsPositionU10SG10[objectsPositionU10SG10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U10SG10_check_Capsule2 <- tail(Capsule2U10SG10, n = 1)

Cylinder2U10SG10 <- objectsPositionU10SG10[objectsPositionU10SG10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U10SG10_check_Cylinder2 <- tail(Cylinder2U10SG10, n = 1)

SphereU10SG10 <- objectsPositionU10SG10[objectsPositionU10SG10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U10SG10_check_Sphere <- tail(SphereU10SG10, n = 1)

Cylinder_3U10SG10 <- objectsPositionU10SG10[objectsPositionU10SG10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U10SG10_check_Cylinder_3 <- tail(Cylinder_3U10SG10, n = 1)

U10SG10_check_total <- rbind(U10SG10_check_Cube2, U10SG10_check_Capsule, U10SG10_check_Cube_1,
                             U10SG10_check_Cube, U10SG10_check_Cylinder, U10SG10_check_Egg, 
                             U10SG10_check_Capsule2, U10SG10_check_Cylinder2, U10SG10_check_Sphere, 
                             U10SG10_check_Cylinder_3)


## ------------------- U11SG10 -------------------
## copio dati da JSON
U11SG10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_05_11_14_43_U11.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU11SG10<-U11SG10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU11SG10<-U11SG10[[2]][[1]]
objectsPositionU11SG10$Utente <- "U11SG"

## creo tabella per ogni oggetto
Cube2U11SG10 <- objectsPositionU11SG10[objectsPositionU11SG10$objPosition %like% "Cube2", ]
Cube2U11SG10$Utente <- "U11SG"
## controllo ultima posizione
U11SG10_check_Cube2 <- tail(Cube2U11SG10, n = 1)

CapsuleU11SG10 <- objectsPositionU11SG10[objectsPositionU11SG10$objPosition %like% "Capsule", ]
CapsuleU11SG10$Utente <- "U11SG"
## controllo ultima posizione
U11SG10_check_Capsule <- tail(CapsuleU11SG10, n = 1)

Cube_1U11SG10 <- objectsPositionU11SG10[objectsPositionU11SG10$objPosition %like% "Cube 1", ]
Cube_1U11SG10$Utente <- "U11SG"
## controllo ultima posizione
U11SG10_check_Cube_1 <- tail(Cube_1U11SG10, n = 1)

CubeU11SG10 <- objectsPositionU11SG10[objectsPositionU11SG10$objPosition %like% "Cube", ]
## controllo ultima posizione
U11SG10_check_Cube <- tail(CubeU11SG10, n = 1)

CylinderU11SG10 <- objectsPositionU11SG10[objectsPositionU11SG10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U11SG10_check_Cylinder <- tail(CylinderU11SG10, n = 1)

EggU11SG10 <- objectsPositionU11SG10[objectsPositionU11SG10$objPosition %like% "Egg", ]
## controllo ultima posizione
U11SG10_check_Egg <- tail(EggU11SG10, n = 1)

Capsule2U11SG10 <- objectsPositionU11SG10[objectsPositionU11SG10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U11SG10_check_Capsule2 <- tail(Capsule2U11SG10, n = 1)

Cylinder2U11SG10 <- objectsPositionU11SG10[objectsPositionU11SG10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U11SG10_check_Cylinder2 <- tail(Cylinder2U11SG10, n = 1)

SphereU11SG10 <- objectsPositionU11SG10[objectsPositionU11SG10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U11SG10_check_Sphere <- tail(SphereU11SG10, n = 1)

Cylinder_3U11SG10 <- objectsPositionU11SG10[objectsPositionU11SG10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U11SG10_check_Cylinder_3 <- tail(Cylinder_3U11SG10, n = 1)

U11SG10_check_total <- rbind(U11SG10_check_Cube2, U11SG10_check_Capsule, U11SG10_check_Cube_1,
                             U11SG10_check_Cube, U11SG10_check_Cylinder, U11SG10_check_Egg, 
                             U11SG10_check_Capsule2, U11SG10_check_Cylinder2, U11SG10_check_Sphere, 
                             U11SG10_check_Cylinder_3)


## ------------------- U12SG10 -------------------
## copio dati da JSON
U12SG10 <- as_tibble(fromJSON("G:/Il mio Drive/Università/20_21_Tesi/JSON/SG/HapticMemorySequenceLog_2021_11_05_11_40_38_U12.json"))

## creo tabella contenente i movimenti della scatola rossa
objInTheBoxU12SG10<-U12SG10[[1]][[1]]

## creo tabella contenente le posizioni iniziali e finali degli oggetti
objectsPositionU12SG10<-U12SG10[[2]][[1]]
objectsPositionU12SG10$Utente <- "U12SG"

## creo tabella per ogni oggetto
Cube2U12SG10 <- objectsPositionU12SG10[objectsPositionU12SG10$objPosition %like% "Cube2", ]
Cube2U12SG10$Utente <- "U12SG"
## controllo ultima posizione
U12SG10_check_Cube2 <- tail(Cube2U12SG10, n = 1)

CapsuleU12SG10 <- objectsPositionU12SG10[objectsPositionU12SG10$objPosition %like% "Capsule", ]
CapsuleU12SG10$Utente <- "U12SG"
## controllo ultima posizione
U12SG10_check_Capsule <- tail(CapsuleU12SG10, n = 1)

Cube_1U12SG10 <- objectsPositionU12SG10[objectsPositionU12SG10$objPosition %like% "Cube 1", ]
Cube_1U12SG10$Utente <- "U12SG"
## controllo ultima posizione
U12SG10_check_Cube_1 <- tail(Cube_1U12SG10, n = 1)

CubeU12SG10 <- objectsPositionU12SG10[objectsPositionU12SG10$objPosition %like% "Cube", ]
## controllo ultima posizione
U12SG10_check_Cube <- tail(CubeU12SG10, n = 1)

CylinderU12SG10 <- objectsPositionU12SG10[objectsPositionU12SG10$objPosition %like% "Cylinder", ]
## controllo ultima posizione
U12SG10_check_Cylinder <- tail(CylinderU12SG10, n = 1)

EggU12SG10 <- objectsPositionU12SG10[objectsPositionU12SG10$objPosition %like% "Egg", ]
## controllo ultima posizione
U12SG10_check_Egg <- tail(EggU12SG10, n = 1)

Capsule2U12SG10 <- objectsPositionU12SG10[objectsPositionU12SG10$objPosition %like% "Capsule2", ]
## controllo ultima posizione
U12SG10_check_Capsule2 <- tail(Capsule2U12SG10, n = 1)

Cylinder2U12SG10 <- objectsPositionU12SG10[objectsPositionU12SG10$objPosition %like% "Cylinder2", ]
## controllo ultima posizione
U12SG10_check_Cylinder2 <- tail(Cylinder2U12SG10, n = 1)

SphereU12SG10 <- objectsPositionU12SG10[objectsPositionU12SG10$objPosition %like% "Sphere", ]
## controllo ultima posizione
U12SG10_check_Sphere <- tail(SphereU12SG10, n = 1)

Cylinder_3U12SG10 <- objectsPositionU12SG10[objectsPositionU12SG10$objPosition %like% "Cylinder_3", ]
## controllo ultima posizione
U12SG10_check_Cylinder_3 <- tail(Cylinder_3U12SG10, n = 1)

U12SG10_check_total <- rbind(U12SG10_check_Cube2, U12SG10_check_Capsule, U12SG10_check_Cube_1,
                             U12SG10_check_Cube, U12SG10_check_Cylinder, U12SG10_check_Egg, 
                             U12SG10_check_Capsule2, U12SG10_check_Cylinder2, U12SG10_check_Sphere, 
                             U12SG10_check_Cylinder_3)


## tabella finale
SG10 <- rbind(U01SG10_check_total, U02SG10_check_total, U03SG10_check_total,
              U04SG10_check_total, U05SG10_check_total, U06SG10_check_total,
              U07SG10_check_total, U08SG10_check_total, U09SG10_check_total,
              U10SG10_check_total, U11SG10_check_total, U12SG10_check_total)