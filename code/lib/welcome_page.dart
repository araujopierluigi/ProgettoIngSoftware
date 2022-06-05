import 'package:flutter/material.dart';
import 'package:code/theme.dart';
import 'package:code/list_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      body: Container(
        padding: const EdgeInsets.all(64.0),
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              CustomTheme.gradietStart,
              CustomTheme.gradietEnd,
            ])),
        child: Column(
          children: [
            _welcomeWidget(),
            _startButton(context),
          ],
        ),
      ));

  Widget _startButton(BuildContext context) => ElevatedButton(
    child: const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 48.0,),
      child: Text('INIZIA', style: TextStyle(
        fontSize: 25.0,
      ),),
    ),
    onPressed: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => HomePage(),)
    ),
  );

  Widget _welcomeWidget() => Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Image(
          image: AssetImage('assets/images/start_logo.png'),
          fit: BoxFit.fitWidth,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 48.0),
          child: Text(
            'Aranea',
            style: TextStyle(
                color: Colors.white,
                fontSize: 48.0
            ),
          ),
        )
      ],
    ),
  );
}