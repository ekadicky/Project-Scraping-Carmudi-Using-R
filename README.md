
<div align="center">

<img src="https://github.com/ekadicky/Project-Scraping-Efootball-Using-R/assets/142238683/3d358657-7a04-4c29-b2bb-2fa24bc2afe7" width="500" height="300">



# CARMUDI SCRAPING

<p align="center">
    
🚙🚗🚙🚗🚙🚗 MENU 🚙🚗🚙🚗🚙🚗

</p>

[Tentang](#information_source-Tentang)
•
[Deskripsi Project](#desktop_computer-Project)
•
[Dokumen](##notebook_with_decorative_cover-Dokumen)
•
[Visualisasi Data Scraping](#chart_with_upwards_trend-visualisasi-data-scraping)
•
[PPT](#open_book-PPT)
•
[Pengembang](#construsction_worker_man-Pengembang)


</div>

# ℹ️ Tentang

**APA ITU CARMUDI?**

<p align="justify">
Carmudi adalah situs web wadah untuk mempertemukan antara penjual dengan pembeli bertransaksi kendaraan baru maupun bekas.
</p>


## 🖥️ Project 

<div align="center">

<img src="https://github.com/ekadicky/Project-Scraping-Efootball-Using-R/assets/142238683/0676924c-5d84-4cdc-889d-a282521e4edb" width="337" height="150">



</p>

<p align="justify">
Proyek kali ini akan melakukan scraping pada situs web "Carmudi Indonesia" yang dapat diakses melalui https://www.carmudi.co.id/. Situs web ini adalah platform terkemuka yang menyediakan daftar kendaraan untuk dijual di Indonesia. Carmudi Indonesia dikenal karena menyajikan informasi terperinci tentang berbagai jenis kendaraan, mulai dari mobil, motor, hingga truk, termasuk spesifikasi, harga, dan informasi penjual. Platform ini juga menawarkan berita terbaru dan ulasan tentang industri otomotif, serta tips dan saran bagi pembeli dan penjual kendaraan.

</p>

<img src="https://github.com/ekadicky/Project-Scraping-Efootball-Using-R/assets/142238683/1acef8b5-8326-4ed1-81d5-15e767ed8f99" width="180" height="200">

</p>

<p align="justify">
Salah satu produk kendaraan yang dipasarkan dalam situs ini adalah Toyota Raize. Toyota Raize adalah sebuah SUV Compact yang diproduksi oleh Toyota. Kendaraan ini dikenal dengan desainnya yang sporty dan modern, serta fitur-fitur canggih yang ditawarkan. Scraping data pada Toyota Raize memiliki kepentingan strategis dalam berbagai aspek industri otomotif. Dengan mengumpulkan informasi tentang SUV Compact ini, analis dan dealer dapat memperoleh pemahaman yang lebih dalam tentang tren pasar, preferensi konsumen, dan posisi kompetitif Raize dibandingkan dengan kendaraan lain di segmennya. Informasi ini penting untuk merumuskan strategi pemasaran yang efektif, menyesuaikan harga, dan meningkatkan penawaran produk.
</p>

</div>

<p align="justify">
Data apa saja yang akan dilakukan scraping adalah sebagai berikut :
 </p>

 <p align="justify">
      
+ **Jenis Mobil :** Jenis atau tipe mobil Toyota Raize
+ **Harga Mobil :** Harga mobil (Bekas)
+ **Odometer :** Jarak yang sudah ditempuh mobil sejak pertama kali release atau dipakai
+ **Tahun :** Tahun produksi mobil
+ **Transmisi :** Jenis transmisi mobil
+ **Lokasi :** Lokasi asal pemilik mobil
</p>


# 📔 Dokumen
Berikut adalah salah satu contoh dokumen di MongoDB untuk mobil bekas Toyota Raize dari website Carmudi Indonesia :
```mongodb
{
        "_id":{"$oid":"6669903ab80e134b77083cd1"},
        "Jenis_Mobil":"Toyota Raize 1.0 G Wagon ",
        "Harga_Mobil":"Rp 193.000.000",
        "Odometer":"20 - 25K KM",
        "Tahun":"2021",
        "Transmisi":" Automatic",
        "Lokasi":" DKI Jakarta"}
```

## 📈 Visualiasi Data Hasil Scraping
Berikut merupakan link visualisasi data hasil scraping : 
+ [Visualisasi Project Web Scraping: carmudi.co.id](https://rpubs.com/ekdrmwn/1198205)

## 📖 Slide Presentasi
Berikut adalah link materi presentasi yang memuat proyek ini :
+ [Slide Presentasi Project Web Scraping: carmudi.co.id](https://github.com/ekadicky/Project-Scraping-Carmudi-Using-R/blob/main/PPT_ScrapingCarmudi.pdf)


## 👷‍♂️ Pengembang
+ [Eka Dicky Darmawan Yanuari](https://github.com/ekadicky/) (G1501231088)
