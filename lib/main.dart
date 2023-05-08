import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import './src/app_module.dart';
import './src/app_widget.dart';
import 'src/core/env/env.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await Env.instance.load();
  return runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
