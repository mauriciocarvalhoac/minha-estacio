import 'package:flutter/material.dart';
import 'package:minha_estacio/core/layout/StructurePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minha Estácio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primaryColor: const Color.fromRGBO(20, 75, 201, 1),
        highlightColor: const Color.fromRGBO(242, 242, 242, 1),
      ),
      home: const StructurePage(),
    );
  }
}
