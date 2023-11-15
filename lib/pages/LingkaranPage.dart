import 'package:bangun_datar_app/controller/lingkaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({Key? key}) : super(key: key);
  final LingkaranController _lingkaranController = Get.put(LingkaranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text(
            "LingkaranPage",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
            children: [
              Image.asset(
                "assets/lingkaran.png",
                height: 100,
                width: 100,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text("Lingkaran"),
              ),
              Text(
                  "Lingkaran adalah tempat kedudukan titik-titik yang berjarak sama dengan satu titik tertentu. "
                      " Yang dimaksud titik tertentu adalah titik pusat lingkaran, sedangkan jarak yang sama adalah jari-jari lingkaran."),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  onChanged: (value) {
                    _lingkaranController.r = int.parse(value);
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Jari-jari",
                      hintText: "Masukkan Jari-jari",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 8),
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
                        onPressed: () {
                          _lingkaranController.hitungluas();
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.lightBlueAccent,
                            padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                            textStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        child: Text("Hitung Luas",
                            style: TextStyle(color: Colors.white))),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        _lingkaranController.hitungkeliling();
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.lightGreenAccent,
                          padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                          textStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      child: Text("Hitung Keliling",
                          style: TextStyle(color: Colors.deepPurple))),
                ],
              ),
              Obx(
                    () => Text(
                  _lingkaranController.hasil.value,
                  style: TextStyle(
                    color: _lingkaranController.isihitungluas.value
                        ? Colors.lightBlueAccent
                        : Colors.green))),
            ],
        ),
        );
    }
}