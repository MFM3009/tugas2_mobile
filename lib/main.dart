import 'package:flutter/material.dart';

void main() {
  runApp(AplikasiPenjualanKopi());
}

class AplikasiPenjualanKopi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Konfigurasi aplikasi
      title: 'Aplikasi Penjualan Kopi',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Beranda(),
    );
  }
}

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat datang di Aplikasi Penjualan Kopi!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () {
                // Navigasi ke halaman daftar menu kopi
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DaftarMenuKopi(),
                  ),
                );
              },
              child: Text('Lihat Menu Kopi'),
            ),
          ],
        ),
      ),
    );
  }
}

class DaftarMenuKopi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Menu Kopi'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.local_cafe),
              title: Text('Espresso'),
              subtitle: Text('Rp 20.000'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.local_cafe),
              title: Text('Cappuccino'),
              subtitle: Text('Rp 25.000'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.local_cafe),
              title: Text('Latte'),
              subtitle: Text('Rp 25.000'),
            ),
          ),
          // Tambahkan menu kopi lainnya di sini
        ],
      ),
    );
  }
}