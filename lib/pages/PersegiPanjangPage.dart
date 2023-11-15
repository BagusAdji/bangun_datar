import 'package:bangun_datar_app/controller/PersegiPanjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({super.key});
  final PersegiPanjangController _persegiPanjangController = Get.put(PersegiPanjangController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          "PersegiPanjangPage",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/persegipanjang.png", height: 100),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Persegi"),
          ),
          Text("Persegi panjang merupakan bangun datar yang memiliki dua pasang sisi sama panjang dan sejajar serta besar semua sudutnya adalah 90⁰ atau "
              "berbentuk siku-siku. Ada berbagai benda yang berbentuk persegi panjang, contohnya pintu, meja, buku tulis, penggaris, kertas, hingga lapangan."),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              width: 100.0,
              height: 100.0,
              child: TextFormField(
                onChanged: (value){
                  _persegiPanjangController.panjang=int.parse(value);
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "panjang",
                    hintText: "Masukkan panjang",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              width: 100.0,
              height: 100.0,
              child: TextFormField(
                onChanged: (value){
                  _persegiPanjangController.lebar=int.parse(value);
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "lebar",
                    hintText: "Masukkan lebar",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlueAccent,
                        textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    onPressed: (){
                      _persegiPanjangController.hitungluas();
                    }, child: Text("Hitung Luas",
                    style: TextStyle(color: Colors.white))),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreenAccent,
                      textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  onPressed: (){
                    _persegiPanjangController.hitungkeliling();
                  }, child: Text("Hitung keliling",
                  style: TextStyle(color: Colors.white))),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(() => Text(_persegiPanjangController.hasil.value,
                style: TextStyle(color: _persegiPanjangController.isihitungluas.value
                    ? Colors.lightBlueAccent
                    : Colors.green))),
          ),
        ],
      ),
    );
  }
}