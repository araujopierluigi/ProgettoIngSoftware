import 'package:flutter/material.dart';
import 'package:code/items_path.dart';

class HomePage extends StatefulWidget{

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  final ItemsPath itemPath1 = new ItemsPath(
    img: "assets/images/Acanthoscurria-geniculata-300x180.jpg",
    routeName: "/acanthoscurriaGeniculata"
  );

  final ItemsPath itemPath2 = new ItemsPath(
      img: "assets/images/Theraphosa-blondii-300x180.jpg",
      routeName: "/theraphosaBlondii"
  );

  final ItemsPath itemPath3 = new ItemsPath(
      img: "assets/images/Grammostola-spatulata-300x180.jpg",
      routeName: "/grammostolaSpatulata"
  );

  final ItemsPath itemPath4 = new ItemsPath(
      img: "assets/images/Haplopelma-lividus-300x180.jpg",
      routeName: "/haplopelmaLividus"
  );

  final ItemsPath itemPath5 = new ItemsPath(
      img: "assets/images/Euathlus-auratum-300x180.jpg",
      routeName: "/euathlusAuratum"
  );

  @override
  Widget build(BuildContext context) {
    List<ItemsPath> _listItem = [itemPath1, itemPath2, itemPath3, itemPath4, itemPath5];
    return Scaffold(
      backgroundColor: Colors.brown[600],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Aranea"),
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
                    image: AssetImage('assets/images/homepage.jpg'),
                    fit: BoxFit.cover
                  )
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight ,
                        colors: [
                            Colors.black.withOpacity(.4),
                            Colors.black.withOpacity(.2),
                        ]
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("Quale tra questi è il tuo ragno?", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                      SizedBox(height: 30,),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                        ),
                        child: Center(
                          child: Text("Scegli tra quelli nell\'elenco qui sotto", style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),),
                        ),
                      ),
                      SizedBox(height: 30,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: _listItem.map((data) => Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, data.routeName);
                          },
                          splashColor: Colors.white10,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(data.img),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    )).toList(),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
