#!/usr/bin/env bash

# Número total de imágenes
NUM_IMAGES=18

# Procesar cada imagen 
for i in $(seq 1 $NUM_IMAGES); do
    INPUT_PNG="imgs/img${i}.jpg"
    TEMP_FILE="imgs/img${i}.bin"
    
    # Convertir la imagen a binario
    python3 fromPNG2Bin.py ${INPUT_PNG}
    
    # Procesar el archivo binario con el programa principal
    ./main_par ${TEMP_FILE}
    
    # Convertir el archivo procesado de binario a PNG 
    python3 fromBin2PNG.py ${TEMP_FILE}.new
done
