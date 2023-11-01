#ETL para análisis de imágenes de vídeo 

#Agregar el source para el archivo donde tenes el color_analysis 

source(here::here("R", "color-analysis.R"))

output_filename <- here::here("data", "imagenes_procesadas.rds")

mis_frames <- dir(here::here("video-frames"), full.names = TRUE)

#Para Testing 

mis_frames <- mis_frames[1:2] #Remover después 
my_data <- color_analysis(mis_frames)

my_data$image_path <- mis_frames

#readr::write_rds(my_data, file = output_filename)


