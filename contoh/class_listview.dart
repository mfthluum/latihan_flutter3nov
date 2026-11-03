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
      theme: ThemeData(colorSchemeSeed: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contoh Aplikasi Listview'),
        ),
        body: const Column(
          children: [
            InfoRow(
              ikon: Icons.person,
              label: 'Nama',
              value: 'Muhamad Miftahul Ulum',
            ),
            SizedBox(height: 10),
            InfoRow(
              ikon: Icons.school,
              label: 'Jurusan',
              value: 'Teknik Informatika - Software Engineering',
            ),
            SizedBox(height: 10),
            InfoRow(
              ikon: Icons.mail,
              label: 'Email',
              value: 'ulumm3952@gmail.com',
            ),
            SizedBox(height: 10),
            InfoRow(
              ikon: Icons.camera_alt,
              label: 'Instagram',
              value: '@mfthllum',
            ),
          ],
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.ikon,
    required this.label,
    required this.value,
    this.catatan,
  });

  final IconData ikon;
  final String label;
  final String value;
  final String? catatan;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(ikon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
