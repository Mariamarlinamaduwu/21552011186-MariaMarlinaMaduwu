import 'package:flutter/material.dart';
import '../model/pasien.dart';
import '/ui/pasien_detail.dart';

class PasienUpdateForm extends StatefulWidget {
  final Pasien pasien;

const PasienUpdateForm({Key? key, required this.pasien}) : super(key: key);
_PasienUpdateFormState createState() => _PasienUpdateFormState();
}
class _PasienUpdateFormState extends State<PasienUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _idCtrl = TextEditingController();
  final _namaPasienCtrl = TextEditingController();
  final _nipCtrl = TextEditingController();
  final _namaCtrl = TextEditingController();
  final _tanggalLahirCtrl = TextEditingController();
  final _nomorTeleponCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _idCtrl.text = widget.pasien.id.toString();
      _namaPasienCtrl.text = widget.pasien.namaPasien;
      _nipCtrl.text = widget.pasien.nomorRm;
      _namaCtrl.text = widget.pasien.nama;
      _tanggalLahirCtrl.text = widget.pasien.tanggalLahir;
      _nomorTeleponCtrl.text = widget.pasien.nomorTelepon;
      _passwordCtrl.text = widget.pasien.alamat;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Pasien")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldID(),
              _fieldNamaPasien(),
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

  _fieldID() {
    return TextField(
      decoration: const InputDecoration(labelText: "ID"),
      controller: _idCtrl,
    );
  }

  _fieldNamaPasien() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pasien"),
      controller: _namaPasienCtrl,
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
      Pasien pasien = Pasien(
        id: widget.pasien.id,
        namaPasien: _namaPasienCtrl.text,
        nomorRm: widget.pasien.nomorRm,
        nama: widget.pasien.nama,
        tanggalLahir: widget.pasien.tanggalLahir,
        nomorTelepon: widget.pasien.nomorTelepon,
        alamat: widget.pasien.alamat,
      );
      Navigator.pop(context);
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => PasienDetail(pasien: pasien)));
    },
      child: const Text("Simpan Perubahan"),
    );
  }
}

