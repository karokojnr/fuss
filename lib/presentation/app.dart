import 'package:flutter/material.dart';

import 'router.dart';

class FussApp extends StatelessWidget {
  const FussApp({super.key});

  @override
  Widget build(BuildContext context) {
    const color = Colors.green;
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Fuss',
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      theme: ThemeData.light(
        useMaterial3: true,
      ).copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: color,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: color,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.system,
    );
  }
}
