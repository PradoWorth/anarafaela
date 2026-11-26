#!/usr/bin/env bash
# Baixa as fotos do site antigo do Studio Ana Rafaela para a pasta img/
# Uso (Git Bash, na pasta do site): bash baixar-fotos.sh
# Nesta versao o site ja procura as fotos em img/.
set -e
mkdir -p img
BASE="https://studioanarafaela.com.br/wp-content/uploads"
for p in \
 2023/09/Ana-Rafaela-768x1046.png \
 2023/09/Cliente-10.jpeg 2023/09/Cliente-2-3.jpeg 2023/09/Cliente-3-2.jpeg 2023/09/Cliente-4-3.jpeg \
 2023/09/Cliente-5-3.jpeg 2023/09/Cliente-6-3.jpeg 2023/09/Cliente-7-3.jpeg 2023/09/Cliente-8-3.jpeg \
 2023/10/Depilacao.jpeg 2023/10/Depilacao-2.jpeg 2023/10/Depilacao-3.jpeg \
 2023/10/Manicure.jpeg 2023/10/Manicure-2.jpeg 2023/10/Sobrancelha.jpeg \
 2023/09/WhatsApp-Image-2023-09-13-at-11.55.28-5.jpeg 2023/09/2022-09-08-1-cortada-1.jpg \
 2023/09/WhatsApp-Image-2023-09-13-at-11.55.28.jpeg 2023/09/2023-05-09-1.jpg 2023/09/2022-09-08-2.jpg \
 2023/09/WhatsApp-Image-2023-09-13-at-11.55.26.jpeg \
 2023/09/WhatsApp-Image-2023-09-14-at-15.16.34-e1694722075559-1024x855.jpeg \
 2023/10/Snapinsta.app_372508474_680267866979588_2243770914778532501_n_1080-1-2.jpg \
 2024/01/cropped-lOGO-BRANCO-ICONE-1-270x270.jpg
do
  echo "Baixando $(basename "$p")"
  curl -fsSL "$BASE/$p" -o "img/$(basename "$p")"
done
echo "Pronto: $(ls img | wc -l) fotos em img/"
