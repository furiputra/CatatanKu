import 'package:catatanku/home.dart';
import 'package:flutter/material.dart';
import 'signup.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // Variabel untuk mengontrol apakah password disembunyikan atau ditampilkan
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Image
              Image.asset(
                'assets/logo_catatanku.png', // Pastikan gambar berada di folder assets/images
                height: 200,
              ),
              // Title "Catatan KU"
              Center(
                child: const Text(
                  'Selamat Datang di Aplikasi Pencatatan Keuangan Prbadimu!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18, // Ukuran font diperbesar sedikit
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Email TextField
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 20,
                  ), // Spacing di dalam input field
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Password TextField
              TextField(
                obscureText: _obscureText, // Mengontrol visibilitas teks
                decoration: InputDecoration(
                  hintText: 'Password',
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 20,
                  ), // Spacing di dalam input field
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText
                          ? Icons.visibility_off // Mata tertutup
                          : Icons.visibility, // Mata terbuka
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText; // Mengubah visibilitas
                      });
                    },
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // "Lupa Password?" text as a clickable button
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Navigasi ke halaman Lupa Password
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const LupaPasswordPage()), // Ganti dengan halaman Lupa Password yang Anda buat
                    );
                  },
                  child: const Text(
                    'Lupa Password?',
                    style: TextStyle(
                      color: Colors.black, // Warna teks diubah ke biru
                      fontWeight: FontWeight.bold,
                      decoration:
                          TextDecoration.underline, // Teks bergaris bawah
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // Sign In Button
              ElevatedButton(
                onPressed: () {
                  // Action on sign in
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 18,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor:
                      Colors.blue, // Warna tombol diubah menjadi lebih menarik
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white), // Teks menjadi lebih kontras
                ),
              ),
              const SizedBox(height: 20),

              // Register Text
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                  // Navigate to registration page
                },
                child: const Text(
                  'Belum Punya Akun? Daftar Disini!',
                  style: TextStyle(
                    color: Colors.black, // Warna teks diubah ke biru
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline, // Teks bergaris bawah
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Placeholder for LupaPasswordPage
class LupaPasswordPage extends StatelessWidget {
  const LupaPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lupa Password'),
      ),
      body: const Center(
        child: Text('Halaman Lupa Password'),
      ),
    );
  }
}
