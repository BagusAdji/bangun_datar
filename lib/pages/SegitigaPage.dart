import 'package:bangun_datar_app/controller/Segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({super.key});
  final SegitigaController _segitigaController = Get.put(SegitigaController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          "SegitigaPage",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/segitiga.png", height: 100),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Segitiga"),
          ),
          Text("Segitiga adalah bentuk bangun datar yang memiliki tiga sisi dan tiga sudut dengan panjang atau besar yang sama maupun berbeda-beda."
              "Segitiga sendiri terbagi menjadi dua jenis, yaitu segitiga yang dilihat berdasarkan sisinya dan segitiga yang dilihat berdasarkan besaran sudutnya. "),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              width: 100.0,
              height: 100.0,
              child: TextFormField(
                onChanged: (value){
                  _segitigaController.alas=int.parse(value);
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "alas",
                    hintText: "Masukkan alas",
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
                  _segitigaController.tinggi=int.parse(value);
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "tinggi",
                    hintText: "Masukkan tinggi",
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
                      _segitigaController.hitungluas();
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
                    _segitigaController.hitungkeliling();
                  }, child: Text("Hitung keliling",
                  style: TextStyle(color: Colors.white))),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(() => Text(_segitigaController.hasil.value,
                style: TextStyle(color: _segitigaController.isihitungluas.value
                    ? Colors.lightBlueAccent
                    : Colors.green))),
          ),
        ],
      ),
    );
  }
}