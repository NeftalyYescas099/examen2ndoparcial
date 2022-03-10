import 'package:flutter/material.dart';
import 'package:examen2ndop/controllers/zoomcontroller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final Controlador = Get.find<ZoomController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('zoom and opacity image'),
      ),
      body: Center(child: GetBuilder<ZoomController>(
        builder: (zoomController) {
          return Opacity(
              opacity: zoomController.opa,
              child: CircleAvatar(
                radius: zoomController.tamImg,
                backgroundImage: const NetworkImage(
                    'https://guiadelasalud.info/blog/wp-content/uploads/2018/03/letra-a.jpg'),
              ));
        },
      )),
      floatingActionButton: Wrap(
        direction: Axis.vertical,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                Controlador.aumentarzoomdImg();
              },
              child: const Icon(Icons.add),
              backgroundColor: Colors.green,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                Controlador.decrementarzoomdImg();
              },
              child: const Icon(Icons.remove),
              backgroundColor: Colors.red,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                Controlador.reiniciarimg();
              },
              child: const Icon(Icons.restore),
              backgroundColor: Colors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                Controlador.opacidaddImg();
              },
              child: const Icon(Icons.opacity),
              backgroundColor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
