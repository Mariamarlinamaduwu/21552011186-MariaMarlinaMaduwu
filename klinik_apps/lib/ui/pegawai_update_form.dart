import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import '/ui/pegawai_detail.dart';

class PegawaiUpdateForm extends StatefulWidget {
  final Pegawai pegawai;

const PegawaiUpdateForm({Key? key, required this.pegawai}) : super(key: key);
_PegawaiUpdateFormState createState() => _PegawaiUpdateFormState();
}
class _PegawaiUpdateFormState extends State<PegawaiUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _idCtrl = TextEditingController();
  final _namaPegawaiCtrl = TextEditingController();
  final _nipCtrl = TextEditingController();
  final _namaCtrl = TextEditingController();
  final _tanggalLahirCtrl = TextEditingController();
  final _nomorTeleponCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _idCtrl.text = widget.pegawai.id.toString();
      _namaPegawaiCtrl.text = widget.pegawai.namaPegawai;
      _nipCtrl.text = widget.pegawai.nip;
      _namaCtrl.text = widget.pegawai.nama;
      _tanggalLahirCtrl.text = widget.pegawai.tanggalLahir;
      _nomorTeleponCtrl.text = widget.pegawai.nomorTelepon;
      _passwordCtrl.text = widget.pegawai.password;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Ubah Pegawai")),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Widget_fieldID(),
                Widget_fieldNamaPegawai(),
                Widget_fieldNIP(),
                Widget_fieldNama(),
                Widget_fieldTanggalLahir(),
                Widget_fieldNomorTelepon(),
                Widget_fieldPassword(),
                SizedBox(height: 20),
                _tombolSimpan()],
          ),
        ),
      ),
    );
  }

  Widget_fieldID() {
    return TextField(
      decoration: const InputDecoration(labelText: "ID"),
      controller: _idCtrl,
    );
  }

  Widget_fieldNamaPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pegawai"),
      controller: _namaPegawaiCtrl,
    );
  }

  Widget_fieldNIP() {
    return TextField(
      decoration: const InputDecoration(labelText: "NIP"),
      controller: _nipCtrl,
    );
  }

  Widget_fieldNama() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama"),
      controller: _namaCtrl,
    );
  }

  Widget_fieldTanggalLahir() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tanggal Lahir"),
      controller: _tanggalLahirCtrl,
    );
  }

  Widget_fieldNomorTelepon() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nomor Telepon"),
      controller: _nomorTeleponCtrl,
    );
  }

  Widget_fieldPassword() {
    return TextField(
      decoration: const InputDecoration(labelText: "Password"),
      controller: _passwordCtrl,
    );
  }


_tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Pegawai pegawai = new Pegawai(
              id: widget.pegawai.id,
              namaPegawai: _namaPegawaiCtrl.text,
              nip: widget.pegawai.nip,
              nama: widget.pegawai.nama,
              tanggalLahir: widget.pegawai.tanggalLahir,
              nomorTelepon: widget.pegawai.nomorTelepon,
              password: widget.pegawai.password,
          );
          Navigator.pop(context);
          Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => PegawaiDetail(pegawai: pegawai)));
        },
        child: const Text("Simpan Perubahan"));
  }
}