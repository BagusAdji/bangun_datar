import 'package:get/get.dart';

class LingkaranController extends GetxController{

  RxBool isihitungluas = true.obs;
  int r = 0;
  final hasil ="".obs;

  void hitungluas(){
    double hitung = 3.14 * r * r;
    hasil.value = "Hasil perhitungan dari luas lingkaran (3.14 x $r x $r) = $hitung ";
    isihitungluas.value = true;
  }
  void hitungkeliling(){
    double hitung = 2 * 3.14 * r;
    hasil.value = "Hasil perhitungan dari keliling lingkaran (2 x 3.14 x $r) = $hitung";
    isihitungluas.value = false;
  }
}