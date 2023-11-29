import 'package:flutter/material.dart';
import '../widget/sidebar.dart';
import '../model/pegawai.dart';
import 'pegawai_item.dart';
import 'pegawai_detail.dart';
import 'pegawai_form.dart';


class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

@override
State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    drawer: Sidebar(),
    appBar: AppBar(
      title: const Text("Data Pegawai"),
      actions: [
      GestureDetector(
        child: const Icon (Icons.add),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PegawaiForm()));
         },
        )
      ],
    ),
    body: ListView(
      children: [
        PegawaiItem(pegawai: Pegawai( id: 1 , namaPegawai: "Dokter", nip: "12345",  tanggalLahir: "01/01/1990", nomorTelepon: "081234567890", password: "password", nama: 'Adriani')),
        PegawaiItem(pegawai: Pegawai( id: 2 , namaPegawai: "Perawat", nip: "54321",  tanggalLahir: "02/02/1991", nomorTelepon: "081234567891", password: "password", nama: 'Batara')),
        PegawaiItem(pegawai: Pegawai( id: 3 , namaPegawai: "Apoteker", nip: "67890",  tanggalLahir: "03/03/1992", nomorTelepon: "081234567892", password: "password", nama: 'Argantara')),
        PegawaiItem(pegawai: Pegawai( id: 4 , namaPegawai: "Administrasi Klinik", nip: "09876",  tanggalLahir: "04/04/1993", nomorTelepon: "081234567893", password: "password", nama: 'Mozarafaela')),
      ],
      ),
    );
  }
}