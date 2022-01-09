import 'package:flutter/material.dart';
import 'package:qr_app_flutter/pages/direcciones_page.dart';
import 'package:qr_app_flutter/pages/mapas_page.dart';
import 'package:qr_app_flutter/widgets/custom_navigatorbar.dart';
import 'package:qr_app_flutter/widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Historial"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever))
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigatorBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Cambiar para mostrar la página respectiva
    final curretIndex = 0;

    switch (curretIndex) {
      case 0:
        return MapasPage();

      case 1:
        return DireccionesPage();

      default:
        return MapasPage();
    }
  }
}
