import 'package:bangun_datar_app/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({super.key});
final PersegiController _persegiController = Get.put(PersegiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          "PersegiPage",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/persegi.png", height: 100),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Persegi"),
          ),
          Text("Persegi atau bujur sangkar adalah bangun daatr dua dimensi"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (value){
                _persegiController.sisi=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "sisi",
                  hintText: "Masukkan sisi",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlueAccent,
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    onPressed: (){
                  _persegiController.hitungluas();
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
                _persegiController.hitungkeliling();
              }, child: Text("Hitung keliling",
                  style: TextStyle(color: Colors.white))),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(() => Text(_persegiController.hasil.value,
                style: TextStyle(color: Colors.redAccent))),
          ),
        ],
      ),
    );
  }
}