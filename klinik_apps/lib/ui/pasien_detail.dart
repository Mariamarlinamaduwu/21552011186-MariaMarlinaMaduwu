import 'package:flutter/material.dart';
import 'pasien_update_form.dart';
import 'package:klinik_app/model/pasien.dart';


class PasienDetail extends StatefulWidget {
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}
class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Pasien")),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            "ID: ${widget.pasien.id}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Nama Pasien: ${widget.pasien.namaPasien}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Nomor Rm: ${widget.pasien.nomorRm}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Nama: ${widget.pasien.nama}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Tanggal Lahir: ${widget.pasien.tanggalLahir}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Nomor Telepon: ${widget.pasien.nomorTelepon}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Alamat: ${widget.pasien.alamat}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
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

  Widget _tombolUbah() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PasienUpdateForm(pasien: widget.pasien)),
          );
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
        child: const Text("Ubah"));
  }

  Widget _tombolHapus() {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: const Text("Hapus"));
  }
}