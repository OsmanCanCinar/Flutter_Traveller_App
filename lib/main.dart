import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:travel_app/ui/home/home.dart';
import 'package:travel_app/ui/loading/loading.dart';
import 'package:travel_app/ui/location_detail/location_detail.dart';
import 'style.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: _themeData(),
      darkTheme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => LocationDetail(),
      },
    ),
  ));
}

ThemeData _themeData() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      titleTextStyle: appBarTextStyle,
      centerTitle: true,
    ),
    textTheme: const TextTheme(
      subtitle1: titleTextStyle,
      subtitle2: subTitleTextStyle,
      caption: captionTextStyle,
      bodyText1: body1TextStyle,
    ),
  );
}
