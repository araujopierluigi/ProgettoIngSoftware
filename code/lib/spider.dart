import 'package:flutter/material.dart';

class AcanthoscurriaGeniculata extends StatefulWidget{
  @override
  _SpiderPageState createState() => _SpiderPageState();
}

class _SpiderPageState extends State<AcanthoscurriaGeniculata>{
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.grey,
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text("Acanthoscurria Geniculata"),
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
                        "Il colore di fondo è un marrone molto scuro, quasi nero negli "
                            "esemplari freschi di muta; sulle zampe sono alternate delle "
                            "fasce di colore bianco crema, unite tra loro da sottili righe"
                            " del medesimo colore; il bianco è presente anche alla base "
                            "dei cheliceri. "
                            "L\'aspetto generale è quello massiccio di un ragno terrestre,"
                            " quindi con arti adatti alla vita da scavatore. Il maschio e "
                            "la femmina adulti, per quanto riguarda la colorazione, non "
                            "presentano differenze; dal punto di vista somatico, invece, è"
                            " evidente nel maschio la presenza degli uncini sulle tibie e "
                            "in generale la presenza di arti più slanciati, in proporzione"
                            " al corpo, rispetto a quelli delle femmine.",
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
                        "Per quanto riguarda l'allevamento, essendo un ragno di taglia "
                            "medio-grande sarà necessario un terrario di circa 35 x cm 25 "
                            "cm x 20 cm, allestito con un substrato di media profondità "
                            "costituito da torba o vermiculite. Il substrato dovrebbe "
                            "essere mantenuto umido ma non in modo eccessivo, poiché "
                            "questo ragno preferisce avere a disposizione l'acqua da bere,"
                            " piuttosto che semplicemente un'elevata umidità atmosferica.",
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

