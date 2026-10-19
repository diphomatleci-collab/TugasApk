import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisata Danau Toba',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF167D91),
        ),
      ),
      home: const HalamanPemandangan(),
    );
  }
}

class HalamanPemandangan extends StatelessWidget {
  const HalamanPemandangan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF3F7F7),
        foregroundColor: const Color(0xFF173B43),
        elevation: 0,
        title: const Text(
          'Jelajah Indonesia',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: Icon(
              Icons.explore_outlined,
              size: 28,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/BackgroundDanau.jpeg'),
            fit: BoxFit.cover,
            opacity: 0.16,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(18, 8, 18, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar utama
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: SizedBox(
                  height: 270,
                  width: double.infinity,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        'assets/DanauToba.jpeg',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.blueGrey,
                            child: const Center(
                              child: Icon(
                                Icons.image_not_supported,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                          );
                        },
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Color(0xCC102D35),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 20,
                        right: 20,
                        bottom: 22,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'DESTINASI PILIHAN',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              'Danau Toba',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Sumatera Utara, Indonesia',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Judul bagian informasi
              const Text(
                'Keindahan Alam',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF173B43),
                ),
              ),

              const SizedBox(height: 7),

              const Text(
                'Nikmati pesona alam Indonesia yang memukau.',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF61777B),
                ),
              ),

              const SizedBox(height: 18),

              // Kartu penjelasan
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.96),
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF24464B).withOpacity(0.07),
                      blurRadius: 18,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.landscape,
                          color: Color(0xFF167D91),
                          size: 27,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Tentang Danau Toba',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF173B43),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 14),

                    Text(
                      'Danau Toba merupakan danau vulkanik '
                      'yang terkenal di Sumatera Utara. '
                      'Danau ini memiliki hamparan air yang luas '
                      'dan dikelilingi perbukitan hijau yang indah. '
                      'Suasana alamnya cocok untuk bersantai, '
                      'menikmati pemandangan, dan mengenal '
                      'budaya masyarakat Batak.',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.8,
                        color: Colors.blueGrey.shade700,
                      ),
                      textAlign: TextAlign.justify,
                    ),

                    const SizedBox(height: 20),

                    // Informasi keunggulan
                    Row(
                      children: [
                        Expanded(
                          child: infoAlam(
                            Icons.waves,
                            'Danau luas',
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: infoAlam(
                            Icons.park,
                            'Bukit hijau',
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: infoAlam(
                            Icons.camera_alt,
                            'Wisata alam',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 22),

              // Contact dan Location
              const Text(
                'Informasi Pengunjung',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF173B43),
                ),
              ),

              const SizedBox(height: 13),

              Row(
                children: [
                  // Contact
                  Expanded(
                    child: tombolInformasi(
                      context,
                      Icons.phone_rounded,
                      'Contact',
                      '0812-3456-7890',
                      'Nomor kontak: 0812-3456-7890',
                    ),
                  ),

                  const SizedBox(width: 12),

                  // Location
                  Expanded(
                    child: tombolInformasi(
                      context,
                      Icons.location_on_rounded,
                      'Location',
                      'Sumatera Utara',
                      'Lokasi: Danau Toba, Sumatera Utara',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              const Center(
                child: Text(
                  'Jelajahi alam, nikmati keindahannya.',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF61777B),
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget kecil untuk informasi alam
  static Widget infoAlam(IconData ikon, String teks) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFEAF5F4),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        children: [
          Icon(
            ikon,
            color: const Color(0xFF167D91),
            size: 23,
          ),
          const SizedBox(height: 7),
          Text(
            teks,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: Color(0xFF28565C),
            ),
          ),
        ],
      ),
    );
  }

  // Widget untuk tombol Contact dan Location
  static Widget tombolInformasi(
    BuildContext context,
    IconData ikon,
    String judul,
    String isi,
    String pesan,
  ) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(pesan),
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFEAF5F4),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(
                ikon,
                color: const Color(0xFF167D91),
                size: 27,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              judul,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF173B43),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              isi,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 11,
                color: Color(0xFF61777B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
