import 'package:flutter/material.dart';

import 'dependcy_inj.dart';

class AppInitialization {
  Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await initdependctInjection();
  }
}
