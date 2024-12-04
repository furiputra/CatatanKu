import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Daftar widget untuk masing-masing halaman
  static List<Widget> get _widgetOptions => <Widget>[
        // Halaman Transaksi
        TransaksiPage(),
        // Halaman Anggaran
        AnggaranPage(),
        // Halaman Laporan
        LaporanPage(),
        // Halaman Tujuan Keuangan
        TujuanKeuanganPage(),
      ];

  // Fungsi untuk mengubah index saat item di-tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Keuangan'),
      ),
      body: Center(
        // Menampilkan widget sesuai tab yang dipilih
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.monetization_on),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Anggaran',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Laporan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: 'Tujuan',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

// Halaman Transaksi dengan contoh widget button dan text field
class TransaksiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Input Transaksi Anda'),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Masukkan Jumlah',
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            // Aksi untuk tombol
          },
          child: Text('Simpan Transaksi'),
        ),
      ],
    );
  }
}

// Halaman Anggaran dengan contoh widget list dan card
class AnggaranPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8),
      children: <Widget>[
        Card(
          child: ListTile(
            title: Text('Anggaran Bulanan'),
            subtitle: Text('Rp 2.000.000'),
            trailing: Icon(Icons.edit),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Anggaran Liburan'),
            subtitle: Text('Rp 5.000.000'),
            trailing: Icon(Icons.edit),
          ),
        ),
      ],
    );
  }
}

// Halaman Laporan dengan contoh widget grafik
class LaporanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Grafik Laporan Keuangan',
        style: TextStyle(fontSize: 24),
      ),
    );
    // Di sini kamu bisa tambahkan widget grafik sesuai kebutuhan
  }
}

// Halaman Tujuan Keuangan dengan contoh widget list dan icon
class TujuanKeuanganPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8),
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.flag),
          title: Text('Beli Rumah'),
          subtitle: Text('Rp 500.000.000'),
        ),
        ListTile(
          leading: Icon(Icons.flag),
          title: Text('Dana Pendidikan Anak'),
          subtitle: Text('Rp 200.000.000'),
        ),
      ],
    );
  }
}
