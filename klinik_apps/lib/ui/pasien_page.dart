import 'package:flutter/material.dart';
import '../widget/sidebar.dart';
import '../model/pasien.dart';
import 'pasien_item.dart';
import 'pasien_detail.dart';
import 'pasien_form.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data Pasien"),
        actions: [
          GestureDetector(
            child: const Icon (Icons.add),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PasienForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PasienItem(pasien: Pasien( id: 1 , namaPasien: "Pasien Rawat Jalan", nomorRm: "11223357",  tanggalLahir: "01/05/1990", nomorTelepon: "081234567890", alamat: "Jl. Mawar No. 10, Perumahan Cendana Indah, Kota Baru, Jakarta Selatan 12345", nama: 'Adriani')),
          PasienItem(pasien: Pasien( id: 2 , namaPasien: "Pasien Rawat Inap", nomorRm: "11238457",  tanggalLahir: "02/08/1991", nomorTelepon: "081234567891", alamat: "123 Main Street, Apartment 4B, Cityville, State X, 67890", nama: 'Batara')),
          PasienItem(pasien: Pasien( id: 3 , namaPasien: "Pasien Gawat Darurat", nomorRm: "11356789",  tanggalLahir: "03/03/1992", nomorTelepon: "081234567892", alamat: "789 Avenida de la Playa, Apt. 2C, Seaside, State Z, 98765", nama: 'Argantara')),
          PasienItem(pasien: Pasien( id: 4 , namaPasien: "Pasien Pemeriksaan Spesifik", nomorRm: "11456746",  tanggalLahir: "04/07/1993", nomorTelepon: "081234567893", alamat: "Flat 5, Willow Court, Park Lane, Manchester, M1 2XY, United Kingdom", nama: 'Mozarafaela')),
        ],
      ),
    );
  }
}
