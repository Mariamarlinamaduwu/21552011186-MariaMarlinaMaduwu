import 'package:flutter/material.dart';
import 'package:klinik_app/model/pegawai.dart';
import 'package:klinik_app/ui/pegawai_detail.dart';

  class PegawaiForm extends StatefulWidget {
    const PegawaiForm({Key? key}) : super(key : key);
    _PegawaiFormState createState() => _PegawaiFormState();
}

  class _PegawaiFormState extends State<PegawaiForm> {
    final _formkey = GlobalKey<FormState>();
  final _namaPegawaiCtrl = TextEditingController();
  final _idCtrl = TextEditingController();
  final _nipCtrl = TextEditingController();
  final _namaCtrl = TextEditingController();
  final _tanggalLahirCtrl = TextEditingController();
  final _nomorTeleponCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pegawai")),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
        child: Column(
          children: [
            _fieldID(),
            _fieldNamaPegawai(),
            _fieldNIP(),
            _fieldNama(),
            _fieldTanggalLahir(),
            _fieldNomorTelepon(),
            _fieldPassword(),
            SizedBox(height: 20),
            _tombolSimpan()],
        ),
       ),
      ),
    );
  }

  _fieldNamaPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pegawai"),
      controller: _namaPegawaiCtrl,
    );
  }

    _fieldID() {
      return TextField(
        decoration: const InputDecoration(labelText: "ID"),
        controller: _idCtrl,
      );
    }

    _fieldNIP() {
      return TextField(
        decoration: const InputDecoration(labelText: "NIP"),
        controller: _nipCtrl,
      );
    }

    _fieldNama() {
      return TextField(
        decoration: const InputDecoration(labelText: "Nama"),
        controller: _namaCtrl,
      );
    }

    _fieldTanggalLahir() {
      return TextField(
        decoration: const InputDecoration(labelText: "Tanggal Lahir"),
        controller: _tanggalLahirCtrl,
      );
    }

    _fieldNomorTelepon() {
      return TextField(
        decoration: const InputDecoration(labelText: "Nomor Telepon"),
        controller: _nomorTeleponCtrl,
      );
    }

    _fieldPassword() {
      return TextField(
        decoration: const InputDecoration(labelText: "Password"),
        controller: _passwordCtrl,
      );
    }


  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Pegawai pegawai = new Pegawai(
              namaPegawai: _namaPegawaiCtrl.text,
              id: int.tryParse(_idCtrl.text) ?? 0,
              nip: _nipCtrl.text,
              nama: _namaCtrl.text,
              tanggalLahir: _tanggalLahirCtrl.text,
              nomorTelepon: _nomorTeleponCtrl.text,
              password: _passwordCtrl.text,
          );
          Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => PegawaiDetail(pegawai: pegawai)));
        },
        child: const Text("Simpan"));
    }
  }