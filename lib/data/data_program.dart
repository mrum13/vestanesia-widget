import 'package:vestanesia_widgets/models/model_gambar_program.dart';
import 'package:vestanesia_widgets/models/model_notifikasi.dart';
import 'package:vestanesia_widgets/models/model_program.dart';
import 'package:vestanesia_widgets/models/model_syarat.dart';
import 'package:vestanesia_widgets/models/model_transfer_bank.dart';

class DataProgram{

  List<ModelSyarat> syaratData = [
    ModelSyarat("Vestanesia adalah sebuah perusahaan finansial berbasis digital yang fokus pada usaha pertanian, peternakan, perikanan dan industri olahannya. Investor dapat bermitra dengan para petani terbaik melalui penyertaan modal investasi pada Program Budidaya/Transaksi Penjualan Vestanesia dengan manfaat bagi hasil yang menguntungkan."),
    ModelSyarat("Investor harus membaca, menyetujui syarat dan ketentuan yang tercantum di Web Vestanesia melalui www.vestanesia.com."),
    ModelSyarat("Sebelum berinvestasi, Investor harus membaca dan mengerti setiap informasi yang tertuang dalam Proposal Analisis Kelayakan Usaha pada setiap Program Budidaya/Transaksi Penjualan Vestanesia."),
    ModelSyarat("Investor dan Vestanesia berdasarkan itikad baik serta saling mempercayai, telah saling sepakat dan setuju untuk saling mengikatkan diri dalam Kepesertaan Program Budidaya/Transaksi Penjualan Vestanesia."),
    ModelSyarat("Investor wajib menyerahkan semua dokumen termasuk setiap perubahannya dari waktu ke waktu yang disyaratkan oleh Vestanesia berdasarkan aturan OJK RI."),
    ModelSyarat("Vestanesia akan memberikan informasi penempatan dana kepada Investor berdasarkan Program Budidaya/Transaksi Penjualan Vestanesia yang telah dipilih oleh Investor."),
    ModelSyarat("Dana yang diinvestasikan oleh Investor adalah kekayaan dan dana yang berasal dari sumber-sumber yang dibenarkan berdasarkan ketentuan hukum yang berlaku, yakni : Upah kerja, Pendapatan bisnis, Hasil dari penjualan properti dan/atau aset, Warisan, Hadiah, dan sumber lainnya (dijelaskan)."),
    ModelSyarat("Dana yang diinvestasikan oleh Investor juga bukan dari kegiatan pencucian uang, perdagangan narkotik dan obat-obatan terlarang, dan hasil kejahatan lainnya."),
    ModelSyarat("Investor akan mengkonfirmasi setiap penyertaan dana di Program Budidaya/Transaksi Penjualan Vestanesia yang diselenggarakan oleh Vestanesia secara online melalui www.vestanesia.com"),
    ModelSyarat("Paling lambat 3 (tiga hari kerja) setelah Investor mengkonfirmasi penyertaan dana, Vestanesia akan menerbitkan sertifikat penyertaan investasi (selanjutnya disebut sebagai SERTIFIKAT PENYERTAAN INVESTASI)."),
    ModelSyarat("Investor tidak dapat membatalkan penyertaan dana di setiap Program Budidaya/Transaksi Penjualan Vestanesia sebelum program budidaya tersebut berjalan."),
    ModelSyarat("Dalam kondisi tertentu dengan alasan yang sifatnya mendesak, Investor dapat menarik dana investasi di Vestanesia sebelum masa akhir periode Program Budidaya/Transaksi Penjualan Vestanesia dengan ketentuan dikenakan denda administratif 35% dari total dana investasi."),
    ModelSyarat("Bagi hasil untuk setiap Program Budidaya/Transaksi Penjualan Vestanesia diselenggarakan dengan pengembalian pokok pinjaman dan bagi hasil dengan besaran dan jadwal pengembalian sesuai dengan Proposal Analisis Kelayakan Usaha yang diterbitkan oleh Vestanesia di awal investasi. Mohon untuk membaca Proposal Analisis Kelayakan Usaha pada setiap Program Budidaya/Transaksi Penjualan Vestanesia untuk mengetahui informasi lebih terperinci."),
    ModelSyarat("Segala kewajiban perpajakan yang timbul akibat pemberlakuan ketentuan investasi ini, akan ditanggung oleh Investor dan Vestanesia sesuai dengan peraturan perundang-undangan yang berlaku."),
    ModelSyarat("Investor dan Vestanesia sepakat untuk menyelesaikan segala perselisihan yang timbul sehubungan dengan atau sebagai akibat dari penyertaan dana investasi ini secara musyawarah untuk mufakat."),
    ModelSyarat("Apabila perselisihan tersebut tidak dapat diselesaikan dengan musyawarah mufakat, maka para pihak sepakat untuk mengajukan perselisihan yang ada kepada Badan Arbitrase Nasional Indonesia (BANI) dengan tunduk pada peraturan arbitrase BANI."),
    ModelSyarat("Dalam keadaan darurat nasional, perang, peraturan larangan dari pemerintah atau penyebab lainnya diluar kendali Investor dan Vestanesia yang menghalangi untuk menjalankan Ketentuan berinvestasi ini maka kedua belah pihak akan dibebaskan dari kewajiban masing-masing selama periode tersebut."),
    ModelSyarat("Hal-hal yang belum diatur dan perubahan-perubahan dari Ketentuan Investasi Vestanesia, akan diselesaikan melalui kesepakatan atau perundingan antara Investor dengan Vestanesia dan akan dituangkan dalam suatu Addendum Perjanjian yang ditandatangani oleh kedua belah pihak serta merupakan bagian yang tidak terpisahkan dari dan mempunyai kekuatan hukum yang sama dengan Ketentuan Investasi ini."),
  ];

  List<ModelNotifikasi> notifikasiData = [
    ModelNotifikasi("Pembayaran", "Pembayaran Berhasil", "10 Sep"),
    ModelNotifikasi("Program Baru", "Budidaya Pisang Cavendish", "10 Sep"),
    ModelNotifikasi("Investasi", "Penanaman bibit oleh mitra Petani", "10 Sep"),
    ModelNotifikasi("Pembayaran", "Pembayaran Berhasil", "10 Sep"),
    ModelNotifikasi("Program Baru", "Budidaya Pisang Cavendish", "10 Sep"),
    ModelNotifikasi("Investasi", "Penanaman bibit oleh mitra Petani", "10 Sep"),
    ModelNotifikasi("Pembayaran", "Pembayaran Berhasil", "10 Sep"),
    ModelNotifikasi("Program Baru", "Budidaya Pisang Cavendish", "10 Sep"),
    ModelNotifikasi("Investasi", "Penanaman bibit oleh mitra Petani", "10 Sep"),
  ];

  List<ModelBank> bankData = [
    ModelBank("images/mandiri.png", '9087569204798'),
    ModelBank("images/bri.png", '9087569204798'),
    ModelBank("images/bca.png", '9087569204798'),
    ModelBank("images/mandirisyariah.png", '9087569204798'),
    ModelBank("images/bni.png", '9087569204798'),
  ];

  List<ModelGambarProgram> gambarData = [
    ModelGambarProgram("images/pisang1.png"),
    ModelGambarProgram("images/pisang2.png"),
    ModelGambarProgram("images/pisang2.png"),
  ];

  List<ModelProgram> cardData = [
    ModelProgram(
      ["images/pisang2.png"],
      '12',
      'Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)',
      'Jl. Macanda, Romangpolong, Kec. Somba Opu, Kabupaten Gowa, Sulawesi Selatan',
      '12',
      27,
      '800 Juta',
      '1 Milyar',
      '1 Milyar',
      '2',
      '200',
      '2',
      'Mulai Investasi',
      0.9,
      "Pisang cavendish adalah jenis pisang yang saat ini sedang populer di Indonesia. Nama lain dari pisang cavendish adalah pisang ambon putih. Pisang cavendish dapat tumbuh di iklim tropis (tropical fruits). Selain rasanya nikmat untuk dikonsumsi, pisang cavendish juga banyak dijadikan sebagai bahan baku untuk makanan bayi. Misalnya saja diolah menjadi puree atau tepung pisang. Pisang cavendish sangat tepat dan cocok untuk makanan bayi, karena memiliki daging yang lunak sehingga nyaman untuk dikonsumsi balita. Pisang dapat tumbuh di daerah tropis baik di dataran rendah maupun dataran tinggi dengan ketinggian tidak lebih dari 1.600 m di atas permukaan laut (mdpl). Suhu optimum untuk pertumbuhan adalah 270 C, dan suhu maksimumnya 380 C, dengan keasaman tanah (pH) 4,5-7,5."
    ),
    ModelProgram(
      ["images/pisang1.png"],
      '12',
      'Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)',
      'Jl. Macanda, Romangpolong, Kec. Somba Opu, Kabupaten Gowa, Sulawesi Selatan',
      '12',
      27,
      '800 Juta',
      '1 Milyar',
      '1 Milyar',
      '2',
      '200',
      '2',
      'Mulai Investasi',
      0.9,
      "Pisang cavendish adalah jenis pisang yang saat ini sedang populer di Indonesia. Nama lain dari pisang cavendish adalah pisang ambon putih. Pisang cavendish dapat tumbuh di iklim tropis (tropical fruits). Selain rasanya nikmat untuk dikonsumsi, pisang cavendish juga banyak dijadikan sebagai bahan baku untuk makanan bayi. Misalnya saja diolah menjadi puree atau tepung pisang. Pisang cavendish sangat tepat dan cocok untuk makanan bayi, karena memiliki daging yang lunak sehingga nyaman untuk dikonsumsi balita. Pisang dapat tumbuh di daerah tropis baik di dataran rendah maupun dataran tinggi dengan ketinggian tidak lebih dari 1.600 m di atas permukaan laut (mdpl). Suhu optimum untuk pertumbuhan adalah 270 C, dan suhu maksimumnya 380 C, dengan keasaman tanah (pH) 4,5-7,5."
    ),
    ModelProgram(
      ["images/pisang1.png"],
      '12',
      'Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)',
      'Jl. Macanda, Romangpolong, Kec. Somba Opu, Kabupaten Gowa, Sulawesi Selatan',
      '12',
      27,
      '-',
      '1 Milyar',
      '1 Milyar',
      '2',
      '200',
      '2',
      'Segera dimulai',
      0.01,
      "Pisang cavendish adalah jenis pisang yang saat ini sedang populer di Indonesia. Nama lain dari pisang cavendish adalah pisang ambon putih. Pisang cavendish dapat tumbuh di iklim tropis (tropical fruits). Selain rasanya nikmat untuk dikonsumsi, pisang cavendish juga banyak dijadikan sebagai bahan baku untuk makanan bayi. Misalnya saja diolah menjadi puree atau tepung pisang. Pisang cavendish sangat tepat dan cocok untuk makanan bayi, karena memiliki daging yang lunak sehingga nyaman untuk dikonsumsi balita. Pisang dapat tumbuh di daerah tropis baik di dataran rendah maupun dataran tinggi dengan ketinggian tidak lebih dari 1.600 m di atas permukaan laut (mdpl). Suhu optimum untuk pertumbuhan adalah 270 C, dan suhu maksimumnya 380 C, dengan keasaman tanah (pH) 4,5-7,5."
    ),
    ModelProgram(
      ["images/pisang1.png"],
      '12',
      'Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)',
      'Jl. Macanda, Romangpolong, Kec. Somba Opu, Kabupaten Gowa, Sulawesi Selatan',
      '12',
      27,
      '-',
      '1 Milyar',
      '1 Milyar',
      '2',
      '200',
      '2',
      'Selesai',
      0.9,
      "Pisang cavendish adalah jenis pisang yang saat ini sedang populer di Indonesia. Nama lain dari pisang cavendish adalah pisang ambon putih. Pisang cavendish dapat tumbuh di iklim tropis (tropical fruits). Selain rasanya nikmat untuk dikonsumsi, pisang cavendish juga banyak dijadikan sebagai bahan baku untuk makanan bayi. Misalnya saja diolah menjadi puree atau tepung pisang. Pisang cavendish sangat tepat dan cocok untuk makanan bayi, karena memiliki daging yang lunak sehingga nyaman untuk dikonsumsi balita. Pisang dapat tumbuh di daerah tropis baik di dataran rendah maupun dataran tinggi dengan ketinggian tidak lebih dari 1.600 m di atas permukaan laut (mdpl). Suhu optimum untuk pertumbuhan adalah 270 C, dan suhu maksimumnya 380 C, dengan keasaman tanah (pH) 4,5-7,5."
    ),
  ];
}