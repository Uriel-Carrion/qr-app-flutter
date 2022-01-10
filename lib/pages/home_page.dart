import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_app_flutter/pages/direcciones_page.dart';
import 'package:qr_app_flutter/pages/mapas_page.dart';

import 'package:qr_app_flutter/providers/db_provider.dart';
import 'package:qr_app_flutter/providers/ui_provider.dart';

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
    //Obtener el selected menu desde el provider
    final uiProvider = Provider.of<UiProvider>(context);

    //DB
    DBProvider.db.database;

    //Cambiar para mostrar la página respectiva / se obtiene el getter
    final curretIndex = uiProvider.selectedMenuOpt;

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
