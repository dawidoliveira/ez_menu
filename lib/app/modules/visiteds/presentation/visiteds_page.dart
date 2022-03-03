import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'visiteds_controller.dart';

class VisitedsPage extends StatefulWidget {
  static const routeId = '/visiteds';

  @override
  _VisitedsPageState createState() => _VisitedsPageState();
}

class _VisitedsPageState
    extends ModularState<VisitedsPage, VisitedsController> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
