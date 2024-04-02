import 'package:flutter/material.dart';
import 'url_launcher.dart';

class FacultyDetail extends StatelessWidget {
  final Program program;

  const FacultyDetail({super.key, required this.program});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kembali ke Menu Awal"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/${program.imageUrl}'),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Profile',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding( padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
              program.bab[0].description,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Visi',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),Padding( padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
              program.bab[1].description,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Misi',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding( padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
              program.bab[2].description,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Akreditasi',
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding( padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
              program.bab[3].description,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
              const SizedBox(
                height: 16,
              ),
              const Text('Kaprodi',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding( padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
              program.bab[4].description,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
              const SizedBox(
                height: 16,
              ),
              const Text('Dosen',
                        style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                        const SizedBox(
                        height: 8,
                        ),
                    GestureDetector(
                      onTap: () {
                  // Fungsi untuk membuka tautan
                  LaunchURL(program.bab[5].description);
                },
                child: const InkWell(
                  child: Text(
                    'Lihat daftar dosen disini',
                    style: TextStyle(
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    ),
                  ),
                ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Laman Resmi',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Fungsi untuk membuka tautan
                        LaunchURL(program.bab[6].description);
                      },
                      child: const Text(
                        'Kunjungi laman resmi Prodi',
                        style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
              const Text(
                'Prestasi Mahasiswa',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8, 
              ),
              Text(
                program.bab[7].description,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Faculty {
  static List<Program> programs = Program.getProgramList();
}

class Program {
  String? url;
  List<Bab> bab;
  String imageUrl;
  Program(this.imageUrl, this.bab);

  static List<Program> getProgramList() {
    return [
      Program(
        'agrotek.png',
        [
          Bab('Profile', 'Jurusan Agroteknologi, Fakultas Pertanian UPN “Veteran” Jawa Timur berdiri pada tanggal 17 Mei 1968 dan diresmikan oleh Menteri Urusan Veteran dan Demobilisasi Republik Indonesia, dengan Surat Keputusan Pendirian Kajian Program No: 062/Kpts/Mentransvet/68, SK Izin Operasional No. 321/D/T/2008 didukung dengan SK penggabungan Program Studi No. 321/D/T/2008: 321/D/T/2008 didukung dengan surat keputusan penggabungan Program Studi No. 2449/D/T/2009: 2449/D/T/2009.'),
          Bab('Visi', '“Menjadi program studi Agroteknologi unggul dalam penyelenggaraan pendidikan pertanian yang berkualitas berbasis IPTEK dan kewirausahaan guna pengembangan IPTEKS pertanian yang berkarakter belanegara.”'),
          Bab('Misi', '1. Menyelenggarakan pendidikan pertanian yang berkualitas berbasis ipteks dan kewirausahaan untuk menghasilkan lulusan yang berkarakter dan berdaya saing di dunia kerja\n 2.Menyelenggarakan dan mengembangkan penelitian yang berorientasi global untuk meningkatkan kesejahteraan masyarakat'),
          Bab('Akreditasi', 'Terakreditasi A (BAN PT).'),
          Bab('Kaprodi', 'Dr. Ir. Bakti Wisnu Widjajani, M.P.'),
          Bab('Dosen', '1. https://agrotek.upnjatim.ac.id/dosen-dan-tenaga-kependidikan/'),
          Bab('Laman Resmi', 'https://agrotek.upnjatim.ac.id/visi-dan-misi/'),
          Bab('Prestasi Mahasiswa', ' 1.-\n 2.-\n'),
        ],
      ),
      Program(
        'agribisnis.png',
        [
          Bab('Profile', '  Fakultas Pertanian sudah berdiri selama 51 tahun tepatnya sejak tanggal 17 Mei 1968. Sebagai salah satu lembaga pendidikan tinggi, Fakultas Pertanian UPN “Veteran” Jawa Timur selama kurun waktu 1968-2019'),
          Bab('Visi', ' terwujudnya Program Studi Agribisnis Fakultas Pertanian UPNVJT yang unggul dalam Agripreneurship Digital, menghasilkan sumberdaya manusia profesional, dan berkarakter bela negara.'),
          Bab('Misi', ' Deskripsi Bab Misi Prodi Manajemen'),
          Bab('Akreditasi', ' akreditasi A (362) dengan SK BAN-PT No : 1145/SK/BAN-PT/Akred/S/XI/2015'),
          Bab('Kaprodi', 'Prof. Dr. Ir. Syarif Imam Hidayat, M.M.'),
          Bab('Dosen', 'https://agribis.upnjatim.ac.id/pengajar/'),
          Bab('Laman Resmi', 'https://agribis.upnjatim.ac.id/'),
          Bab('Prestasi Mahasiswa', ' 1.au\n 2.ai\n '),
        ],
      ),
      Program(
        's2agrotek.png',
        [
          Bab('Profile', '  Program Magister Agroteknologi Pascasarjana Fakultas Pertanian Universitas Pembangunan Nasional “Veteran” Jawa Timur berdiri tepat pada tahun 2017, dengan ijin operasi pendirian Program Studi Magister Agroteknologi nomor 224/KPT/I/2017.\n \n Program Pascasarjana memiliki berbagai macam fasilitas yang memadai seperti ruang kuliah yang nyaman, laboratorium, fasilitas IT, wifi area, teleconference, laboratorium bahasa dan perpustakaan. Tenaga pengajar Guru Besar, Doktor, dan Praktisi/Profesional sebagai dosen tamu dan dosen tetap.'),
          Bab('Visi', 'Menjadi penyelenggara pendidikan yang unggul dalam pengembangan IPTEKS pertanian berkelanjutan dan kewirausahaan, berjejaring global serta berkarakter belanegara'),
          Bab('Misi', ' 1. Menyelenggarakan pendidikan berkualitas dengan pemanfaatan hasil penelitian dan berkarakter bela negara.\n  2. Menyelenggarakan penelitian strategis dan berkesinambungan untuk mengembangkan IPTEKS pertanian.\n  3. Menyelenggarakan pengabdian kepada masyarakat  melalui penerapan TTG berbasis kearifan lokal.\n  4. Meningkatkan Kerjasama Institusional dalam dan luar negeri melalui Litdimas'),
          Bab('Akreditasi', 'terakreditasi Baik dari BAN-PT Nomor : 7065/SK/BAN-PT/Akred/M/XI/2020.'),
          Bab('Kaprodi', 'Dr. Ir. Penta Suryaminarsih, M.P.'),
          Bab('Dosen', 'https://magrotek.upnjatim.ac.id/dosen-dan-tenaga-kependidikan/'),
          Bab('Laman Resmi', 'https://magrotek.upnjatim.ac.id/'),
          Bab('Prestasi Mahasiswa', ' 1.-\n 2.-\n'),
        ],
      ),
      Program(
        's2agribisnis.png',
        [
          Bab('Profile', 'Program Magister Agribisnis Pascasarjana Fakultas Pertanian Universitas Pembangunan Nasional “Veteran” Jawa Timur berdiri tepat pada tahun 1999, dengan membuka program studi Magister Manajemen Agribisnis, (SK Dirjen Dikti No. 390/Dikti/Kep/1999). '),
          Bab('Visi', 'Menjadi penyelenggara pendidikan yang unggul dalam pengembangan IPTEKS pertanian berkelanjutan dan kewirausahaan, berjejaring global serta berkarakter belanegara \n \n Program Studi Magister Agroteknologi Fakultas Pertanian UPN “Veteran” Jatim bertekad untuk berperan lebih luas dalam memajukan IPTEKS pertanian untuk menghasilkan solusi aplikatif bagi dunia usaha/industri dan pembangunan nasional melalui riset-riset unggul, serta mampu berkompetisi di tingkat global namun tidak lupa dengan akar budaya bangsa Indonesia'),
          Bab('Misi', ' 1. Menyelenggarakan pendidikan berkualitas dengan pemanfaatan hasil penelitian dan berkarakter bela negara.\n 2. Menyelenggarakan penelitian strategis dan berkesinambungan untuk mengembangkan IPTEKS pertanian \n 3. Menyelenggarakan pengabdian kepada masyarakat  melalui penerapan TTG berbasis kearifan lokal.\n  4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabiitas pengelolaan anggaran.\n 5.Mengembangkan kualitas sumberdaya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan menajerial di bidang agribisnis. '),
          Bab('Akreditasi', ' akreditasi A / unggul dari BANPT-DIKTI'),
          Bab('Kaprodi', '	Dr. Ir. Mubarokah, M.T.'),
          Bab('Dosen', 'https://magri.upnjatim.ac.id/dosen-dan-tenaga-kependidikan/'),
          Bab('Laman Resmi', 'https://magri.upnjatim.ac.id/'),
          Bab('Prestasi Mahasiswa', ' 1.-\n 2.-\n'),
        ],
      ),
      Program(
        's3agribisnis.png',
        [
          Bab('Profile', 'Program Doktor Agribisnis merupakan satu – satunya program doktor yang dimiliki oleh UPN “Veteran” Jawa timur. Program doktor agribisnis dimulai dari pengusulan tahun 2019 hingga akhirnya resmi berdiri di tahun 2020. Program doktor agribisnis bertujuan untuk menemukan/ mengembangkan teori gagasan ilmiah baru serta memberikan kontribusi pada pengembangan serta pengamalan ilmu pengetahuan di bidang agribisnis. Selain itu potensi Indonesia sebagai salah satu negara di dunia yang memiliki kekayaan alam sangat besar baik kuantitas maupun keragaman.'),
          Bab('Visi', '“Pengembangan Integrasi Smart FarmingBerkelanjutan yang Berwawasan Global untuk Kesejahteraan Masyarakat”.'),
          Bab('Misi', ' 1. Menyelenggarakan pendidikan berkarakter bela negara yang berorientasi pada pengembangan agribisnis yang berbasis sumberdaya dan kearifan lokal sehingga mampu menciptakan/ inovasi kasanah keilmuan dalam bidang Pertanian khususnya agribisnis.\n 2. Meningkatkan budaya riset dalam pengembangan bidang agribisnis yang berbasis sumberdaya dan kearifan lokal yang berdaya guna untuk penguatan  kesejahteraan masyarakat di tingkat nasional maupun internasional.\n 3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset berskala nasional di bidang agribisnis dan memanfaatkan  kearifan lokal.\n  4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabiitas pengelolaan anggaran.\n 5. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu dalam upaya untuk penyelenggaraan Pendidikan S3 / Doktor Agribisnis.'),
          Bab('Akreditai', 'Akreditasi Baik'),
          Bab('Kaprodi', 'Dr. Ir. Hamidah Hendrarini, M.Si.'),
          Bab('Dosen', 'https://dokgri.upnjatim.ac.id/#edu-team-section'),
          Bab('Laman Resmi', 'https://dokgri.upnjatim.ac.id/'),
          Bab('Prestasi Mahasiswa', ' 1.-\n 2.-\n'),
        ],
      ),
    ];
  }
}
class Bab {
  String title;
  String description;

  Bab(this.title, this.description);

  static List<Bab> getBabList() {
    return [
      Bab('Profile', 'Deskripsi Bab Profile'),
      Bab('Visi', 'Deskripsi Bab Visi'),
      Bab('Misi', 'Deskripsi Bab Misi'),
      Bab('Akreditasi', 'Deskripsi Bab Akreditasi'),
      Bab('Kaprodi', 'Deskripsi Bab Kaprodi'),
      Bab('Dosen', 'Deskripsi Bab Dosen'),
      Bab('Laman Resmi', 'Deskripsi Bab Laman Resmi'),
      Bab('Prestasi Mahasiswa', 'Deskripsi Bab Prestasi Mahasiswa'),
    ];
  }
}