import 'package:flutter/material.dart';
import 'pegawai_update_form.dart';
import 'package:klinik_app/model/pegawai.dart';


class PegawaiDetail extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiDetail({super.key, required this.pegawai});

  @override
  State<PegawaiDetail> createState() => _PegawaiDetailState();
}
class _PegawaiDetailState extends State<PegawaiDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (title: Text("Detail Pegawai")),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "iD: ${widget.pegawai.id}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Nama Pegawai: ${widget.pegawai.namaPegawai}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "NIP: ${widget.pegawai.nip}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Nama: ${widget.pegawai.nama}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Tanggal Lahir: ${widget.pegawai.tanggalLahir}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Nomor Telepon: ${widget.pegawai.nomorTelepon}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Password: ${widget.pegawai.password}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          )
        ],
      ),
    );
  }

  _tombolUbah() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PegawaiUpdateForm(pegawai: widget.pegawai)));
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
        child: const Text("Ubah"));
  }

  _tombolHapus() {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: const Text("Hapus"));
  }
}
