import 'package:flutter/material.dart';
import 'package:stylish_store/app/stylish_store_app.dart';
import 'package:stylish_store/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(const StylishStoreApp());
}
