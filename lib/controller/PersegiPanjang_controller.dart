import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{

  RxBool isihitungluas = true.obs;
  int panjang = 0;
  int lebar = 0;
  final hasil ="".obs;

  void hitungluas(){
    int hitung = panjang * lebar;
    hasil.value = "Hasil perhitungan dari luas persegi panjang ($panjang x $lebar) = $hitung ";
    isihitungluas.value = true;
  }
  void hitungkeliling(){
    int hitung = 2 * (panjang + lebar);
    hasil.value = "Hasil perhitungan dari keliling persegi panjang (2 x ($panjang + $lebar)) = $hitung";
    isihitungluas.value = false;
  }
}