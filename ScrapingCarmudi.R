
# Memuat library yang akan digunakan
library(rvest)
library(tidyverse)
library(mongolite)

# Masukkan link atau alamat website yang akan discraping
alamatweb <- 'https://www.carmudi.co.id/mobil-bekas-dijual/toyota/raize/indonesia?page_size=25'
lamanweb <- read_html(alamatweb)

# Mengambil variabel yang diinginkan
Jenis_Mobil <- lamanweb %>% html_nodes(".ellipsize") %>%
  html_text() %>%
  gsub("\n", "",.)
Harga_Mobil <-  lamanweb %>% html_nodes(".listing__price") %>%
  html_text() %>%
  gsub("\n", "",.)
Odometer <-  lamanweb %>% html_nodes(".listing__specs") %>%
  html_text() %>%
  gsub("\n", "",.)

# Membentuk dataframe
tabeldf <- data.frame(Jenis_Mobil, Harga_Mobil, Odometer, stringsAsFactors = FALSE)

# Membersihkan data
tabeldf <- tabeldf %>%
  mutate(
    Tahun = str_sub(Jenis_Mobil, 1, 4),
    Jenis_Mobil = str_sub(Jenis_Mobil, 6),
    Transmisi = str_sub(Odometer, 10, 21),
    Lokasi = str_sub(Odometer, 20, 33),
    Odometer = str_sub(Odometer, 1, 11),
    Harga_Mobil = gsub("-[0-9]+% ", "", Harga_Mobil),
    Odometer = gsub("Au", "", Odometer),
    Transmisi = gsub("KM", "", Transmisi),
    Transmisi = gsub("M", "", Transmisi),
    Transmisi = gsub("Ja", "", Transmisi),
    Lokasi = gsub("ic", "", Lokasi),
    Lokasi = gsub("c", "", Lokasi),
    Lokasi = gsub("Dea", "", Lokasi),
    Lokasi = gsub("Sal", "", Lokasi),
    Lokasi = gsub("Jawa Timur D", "Jawa Timur", Lokasi)
  )

# Memilih satu baris data secara acak
pilih <- sample(1:32,1,replace=F)
mobil_terpilih <- tabeldf[pilih,]

# Koneksi ke MongoDB untuk memasukkan data
atlas_conn <- mongo(
  collection = Sys.getenv("ATLAS_COLLECTION"),
  db         = Sys.getenv("ATLAS_DB"),
  url        = Sys.getenv("ATLAS_URL")
)

atlas_conn$insert(mobil_terpilih)
rm(atlas_conn)


