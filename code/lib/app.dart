import 'package:flutter/material.dart';
import 'package:code/welcome_page.dart';
import 'package:code/acanthoscurria_geniculata.dart';

class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Aranea',
    routes: {
      '/acanthoscurriaGeniculata': (context) => AcanthoscurriaGeniculata(),
    },
    home: WelcomePage(),
    debugShowCheckedModeBanner: false,
  );
}