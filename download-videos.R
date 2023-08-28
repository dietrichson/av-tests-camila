## Connectar con Google Drive
library("googledrive")
drive_auth()
my_files <- drive_ls(path = "CORPUS - CORTOMETRAJES ANIMADOS")

## Set working directory
setwd(here::here("videos"))

## download all
for(i in 1:nrow(my_files)){
  drive_download(my_files[i,])  
}
