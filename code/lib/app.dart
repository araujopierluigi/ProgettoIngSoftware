import 'package:flutter/material.dart';
import 'package:code/welcome_page.dart';
import 'package:code/acanthoscurria_geniculata.dart';
import 'package:code/theraphosa_blondii.dart';
import 'package:code/grammostola_spatulata.dart';
import 'package:code/haplopelma_lividus.dart';
import 'package:code/euathlus_auratum.dart';

class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Aranea',
    routes: {
      '/acanthoscurriaGeniculata': (context) => AcanthoscurriaGeniculata(),
      '/theraphosaBlondii': (context) => TheraphosaBlondii(),
      '/grammostolaSpatulata': (context) => GrammostolaSpatulata(),
      '/haplopelmaLividus': (context) => HaplopelmaLividus(),
      '/euathlusAuratum': (context) => EuathlusAuratum(),
    },
    home: WelcomePage(),
    debugShowCheckedModeBanner: false,
  );
}