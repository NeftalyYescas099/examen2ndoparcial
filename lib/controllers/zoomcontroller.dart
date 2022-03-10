import 'package:get/get.dart';

class ZoomController extends GetxController {
  double tamImg = 120;
  double opa = 1.0;

  void aumentarzoomdImg() {
    tamImg = tamImg + 30;
    update();
  }

  void decrementarzoomdImg() {
    tamImg = tamImg - 30;
    update();
  }

  void reiniciarimg() {
    opa = 0.9;
    update();
  }

  void opacidaddImg() {
    if (opa > 0.3) {
      opa -= 0.3;
    }
    update();
  }
}
