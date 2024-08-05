import 'package:flutter/material.dart';
import 'package:movies/core/services/services_locator.dart';
import 'package:movies/core/utils/app_string.dart';
import 'package:movies/moves/presntation/views/movies_view.dart';




void main() {
  ServicesLocator().init();
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: AppString.appName,
      
       debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const MoviesView(),
    );
  }
}
