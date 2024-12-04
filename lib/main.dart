import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart'; // Import device_preview
import 'splashscreen.dart'; // Import Splashscreen

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode, // Aktifkan device_preview hanya di mode debug
      builder: (context) => const MyApp(), // Builder untuk aplikasi
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      // Integrasi DevicePreview
      locale:
          DevicePreview.locale(context), // Pilih locale sesuai dengan device
      builder: DevicePreview.appBuilder, // Menggunakan device_preview builder

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      home: const Splashscreen(), // Set Splashscreen sebagai halaman pertama
    );
  }
}
