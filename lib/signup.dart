import 'package:catatanku/signin.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // Variabel untuk mengontrol apakah password disembunyikan atau ditampilkan
  bool _obscureTextPassword = true;
  bool _obscureTextKonfirmasi = true;

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
                  'Daftarkan Diri Anda Sekarang!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18, // Ukuran font diperbesar sedikit
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Username TextField
              TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
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
                obscureText:
                    _obscureTextPassword, // Mengontrol visibilitas teks
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
                      _obscureTextPassword
                          ? Icons.visibility_off // Mata tertutup
                          : Icons.visibility, // Mata terbuka
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureTextPassword =
                            !_obscureTextPassword; // Mengubah visibilitas
                      });
                    },
                  ),
                ),
              ),

              const SizedBox(height: 20),
              // Password TextField
              TextField(
                obscureText:
                    _obscureTextKonfirmasi, // Mengontrol visibilitas teks
                decoration: InputDecoration(
                  hintText: 'Konfirmasi Password ',
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
                      _obscureTextKonfirmasi
                          ? Icons.visibility_off // Mata tertutup
                          : Icons.visibility, // Mata terbuka
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureTextKonfirmasi =
                            !_obscureTextKonfirmasi; // Mengubah visibilitas
                      });
                    },
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Sign In Button
              ElevatedButton(
                onPressed: () {
                  // Action on sign in
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInPage()));
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
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white), // Teks menjadi lebih kontras
                ),
              ),
              const SizedBox(height: 20),
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
