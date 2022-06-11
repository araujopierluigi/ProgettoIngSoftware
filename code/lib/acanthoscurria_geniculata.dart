import 'package:flutter/material.dart';
import 'package:code/spider.dart';

class AcanthoscurriaGeniculata extends StatefulWidget{
  @override
  _SpiderPageState createState() => _SpiderPageState();
}

class _SpiderPageState extends State<AcanthoscurriaGeniculata>{

  final Spider spider = new Spider("Acanthoscurria Geniculata");

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.grey,
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(spider.name),
    ),
    body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/images/Acanthoscurria-geniculata-300x180.jpg'),
                      fit: BoxFit.cover
                  )
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      title: Text(
                        "Descrizione:",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        spider.descrizione(spider.name),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text(
                        "Allevamento:",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        spider.allevamento(spider.name),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

