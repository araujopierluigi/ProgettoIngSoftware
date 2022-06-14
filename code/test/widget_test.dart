import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:code/app.dart';
import 'package:code/list_page.dart';
import 'package:code/acanthoscurria_geniculata.dart';
import 'package:code/theraphosa_blondii.dart';
import 'package:code/grammostola_spatulata.dart';
import 'package:code/haplopelma_lividus.dart';
import 'package:code/euathlus_auratum.dart';

void main() {
  testWidgets("Test Widget Welcome Page", (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    expect(find.text("INIZIA"), findsOneWidget);
    expect(find.text("Aranea"), findsOneWidget);
  });
  testWidgets("Test Widget Home Page", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomePage(),));
    expect(find.text("Aranea"), findsOneWidget);
    expect(find.text("Quale tra questi è il tuo ragno?"), findsOneWidget);
    expect(find.text("Scegli tra quelli nell\'elenco qui sotto"), findsOneWidget);
  });
  testWidgets("Test Widget Acanthoscurria Geniculata Page", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: AcanthoscurriaGeniculata(),));
    expect(find.text("Acanthoscurria Geniculata"), findsOneWidget);
    expect(find.text("Descrizione:"), findsOneWidget);
  });
  testWidgets("Test Widget Theraphosa Blondii Page", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: TheraphosaBlondii(),));
    expect(find.text("Theraphosa Blondii"), findsOneWidget);
    expect(find.text("Descrizione:"), findsOneWidget);
  });
  testWidgets("Test Widget Grammostola Spatulata Page", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: GrammostolaSpatulata(),));
    expect(find.text("Grammostola Spatulata"), findsOneWidget);
    expect(find.text("Descrizione:"), findsOneWidget);
  });
  testWidgets("Test Widget Haplopelma Lividus Page", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HaplopelmaLividus(),));
    expect(find.text("Haplopelma Lividus"), findsOneWidget);
    expect(find.text("Descrizione:"), findsOneWidget);
  });
  testWidgets("Test Widget Euathlus Auratum Page", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: EuathlusAuratum(),));
    expect(find.text("Euathlus Auratum"), findsOneWidget);
    expect(find.text("Descrizione:"), findsOneWidget);
  });
}