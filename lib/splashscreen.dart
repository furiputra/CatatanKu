import 'package:flutter/material.dart';
import 'package:catatanku/signin.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    // Delay selama 3 detik sebelum pindah ke halaman SignInPage
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/logo_catatanku.png', // Pastikan gambar ada di folder assets
          width: 250,
          height: 250,
        ),
      ),
    );
  }
}
