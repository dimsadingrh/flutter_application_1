import 'package:flutter/material.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({Key? key}) : super(key: key);

  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxKodePorduk(),
            _textboxNamaProduk(),
            _textboxHargaProduk(),
            _tombolSimpan()
          ],
        ),
      ),
    );
  }

  _textboxKodeProduk() {
    return Textfield(
      decoration: const InputDecoration(labelText: "Kode Produk"),
      controller: _kodeProdukTextboxController,
    );
  }

  _textboxNamaProduk() {
    return Textfield(
      decoration: const InputDecoration(labelText: "Nama Produk"),
      controller: _namaProdukTextboxController,
    );
  }

  _textboxHargaProduk() {
    return Textfield(
      decoration: const InputDecoration(labelText: "Harga"),
      controller: _hargaProdukTextboxController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          String kodeProduk = _kodeProdukTextboxController.text;
          String namaProduk = _namaProdukTextboxController.text;
          int harga = int.parse(
              _hargaProdukTextboxController.text); //parsing dari string ke int
          //pindah ke halaman Produk Detail dan mengirim data
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProdukDetail(
                    kodeProduk: kodeProduk,
                    namaProduk: namaProduk,
                    harga: harga,
                  )));
        },
        child: const Text('Simpan'));
  }
}
