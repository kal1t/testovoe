import 'package:flutter/material.dart';
import 'package:testovoe/app/app.dart';
import 'package:testovoe/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

/// Разница между @signleton и @injectable