import 'package:calculadora_imc/page/calculadora_page.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith( //configura o tema como dark já que o claro é default, o copy with é pq n podemos mexer no tema, ent sobreescrevemos o que queremos
        primaryColor: backgroundColor, //configurando as cores do projeto de maneira global
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: backgroundColor,
        ),
      ),
      home: const CalculadoraPage(), //aqui configura qual é a pagina inicial do app, chamamos ela aqui
    );
  }
}