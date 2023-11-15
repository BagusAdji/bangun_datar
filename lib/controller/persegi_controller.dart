import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil ="".obs;

  void hitungluas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil perhitungan dari $sisi x $sisi = $hitung";
  }
  void hitungkeliling(){
    int hitung = sisi * 4;
    hasil.value = "Hasil perhitungan dari $sisi + $sisi + $sisi + $sisi = $hitung";
  }
}