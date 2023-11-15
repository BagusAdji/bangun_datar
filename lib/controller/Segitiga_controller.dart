import 'package:get/get.dart';

class SegitigaController extends GetxController{

  RxBool isihitungluas = true.obs;
  int alas = 0;
  int tinggi = 0;
  final hasil ="".obs;

  void hitungluas(){
    double hitung =  alas * tinggi / 2 ;
    hasil.value = "Hasil perhitungan dari luas segitiga ($alas x $tinggi / 2)  = $hitung ";
    isihitungluas.value = true;
  }
  void hitungkeliling(){
    int hitung = alas + tinggi + alas ;
    hasil.value = "Hasil perhitungan dari keliling segitiga ($alas + $tinggi + $alas) = $hitung";
    isihitungluas.value = false;
  }
}