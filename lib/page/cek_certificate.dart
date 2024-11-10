import 'package:flutter/material.dart';
import 'package:digicert/component/user_nav.dart';
import 'package:digicert/component/user_drawer.dart';

class CekCertificatePage extends StatelessWidget {
  const CekCertificatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const CustomAppBar(),
        drawer: const CustomDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Cek e-Sertifikat',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Silahkan cek e-sertifikat (hanya berlaku untuk e-sertifikat yang terbit mulai tahun 2019)',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'NIK',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    child: const Text('Cek'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Card(
                margin: const EdgeInsets.all(5),
                child: Padding(padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Panduan',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    const Text(
                      'Cek sertifikat dengan menggunakan nomor registrasi pelatihan yang tertera di sertifikat atau dengan kode QR. Nomor registrasi dan kode QR dapat dilihat pada bagian yang ditandai merah.',
                    ),
                    const SizedBox(height: 16),
                    Image.network(
                      'https://digitalent.kominfo.go.id/assets/img/dummy-sertif.jpeg', // Replace with your actual image URL
                      width: 200,
                    ),
                  ],
                ),)
              )
            ],
          ),
        ),
      ),
    );
  }
}
