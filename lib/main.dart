// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:utscoba/author.dart';
import 'package:utscoba/author_detail.dart';
import 'faculty_detail.dart';

void main() {
  runApp(const FacultyApp());
}

class FacultyApp extends StatelessWidget {
  const FacultyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fakultas pertanian',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Fakultas Pertanian'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              // Add faculty image here
              Image.asset('assets/fp.jpeg'),
              const SizedBox(height: 16), // Add some vertical spacing
              const Text(
                'Fakultas Pertanian UPN "veteran" Jawa Timur',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
               // Add some vertical spacing
              const Text(
                'Fakultas Pertanian saat ini  memiliki 2 program studi jenjang S-1, yaitu Agroteknologi dan Agribisnis, 2 program studi jenjang S-2 yaitu Magister Agribisnis dan Magister Agroteknologi, serta satu program studi S-3 yaitu program Doktor Agribisnis. Tahun 2015 sudah diusulkan ke Kementerian Riset Teknologi dan Pendidikan Tinggi untuk program Master (S2) Agroteknologi dan program Doktor (S3) Ilmu Pertanian. Berkat kerja keras dalam menjaga kualitas SDM, proses manajemen dan lulusannya, program studi S-1 mendapatkan akreditasi A / unggul. Program studi S-2 Agribisnis mendapatkan akreditasi A / unggul, S-2 Agroteknologi dan S-3 Agribisnis mendapatkan akreditasi baik dari BANPT-DIKTI.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Faculty of agriculture website link
                    InkWell(
                      onTap: () {
                        launch('https://faperta.upnjatim.ac.id/');
                      },
                      child: const Row(
                        children: [
                          Text(
                            'Website Faperta',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16), // Add some horizontal spacing
                    // Faculty email link
                    InkWell(
                      onTap: () {
                        launch('mailto:faperta@upnjatim.ac.id');
                      },
                      child: const Row(
                        children: [
                          Text(
                            '✉ faperta@upnjatim.ac.id',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                          ),
                          Icon(
                            Icons.email_outlined,
                            size: 16,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // ...
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: Faculty.programs.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return FacultyDetail(
                                program: Faculty.programs[index]);
                          },  
                        ),
                      ); 
                    },
                    child: buildFacultyCard(Faculty.programs[index]),
                  );
                },
              ),
              const Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Text(
                        'Kelompok 5',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5, // Adjust the height of the author list as needed
                ),
                Container(
                  height: 200,
                  alignment: Alignment.center,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: Author.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return AuthorDetail(author: Author.data[index]);
                              },
                            ),
                          );
                        },
                        child: buildAuthorCard(Author.data[index]),
                      );
                    },
                  ),
                  
                ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}

Widget buildFacultyCard(Program program) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.asset('assets/${program.imageUrl}'),
          const SizedBox(
            height: 5.0,
          ),
        ],
      ),
    ),
  );
}

Widget buildAuthorCard(Author author) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(author.imageUrl),
          ),
          const SizedBox(height: 8.0),
          Text(
            author.name,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palationo',
            ),
          ),
        ],
      ),
    ),
  );
}

