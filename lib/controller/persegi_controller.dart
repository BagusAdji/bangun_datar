import 'package:get/get.dart';

class PersegiController extends GetxController{

  RxBool isihitungluas = true.obs;
  int sisi = 0;
  final hasil ="".obs;

  void hitungluas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil perhitungan dari luas persegi ($sisi x $sisi) = $hitung ";
    isihitungluas.value = true;
  }
  void hitungkeliling(){
    int hitung = sisi * 4;
    hasil.value = "Hasil perhitungan dari keliling persegi ($sisi + $sisi + $sisi + $sisi) = $hitung";
    isihitungluas.value = false;
  }
}