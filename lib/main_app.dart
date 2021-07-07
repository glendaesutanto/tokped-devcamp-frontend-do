import 'package:flutter/material.dart';
import 'package:tokped_devcamp_do/app.dart';
import 'package:tokped_devcamp_do/utils/tokopedia_colors.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: App().appName,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.light(primary: TokopediaColors.G600),
      ),
      home: Container(),
    );
  }
}
