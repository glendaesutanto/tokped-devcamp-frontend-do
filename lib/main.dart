import 'package:flutter/material.dart';
import 'package:tokped_devcamp_do/app.dart';
import 'package:tokped_devcamp_do/main_app.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  App.configure(appName: "Tokopedia Drop Center Officer", baseUrl: "");
  await Firebase.initializeApp();
  runApp(MainApp());
}
