import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  final Items item1 = new Items(
    title: "Ragno1",
    subtitle: "",
    event: "",
    img: "assets/images/Acanthoscurria-geniculata-300x180.jpg",
    routeName: "/acanthoscurriaGeniculata"
  );

  final Items item2 = new Items(
      title: "Ragno2",
      subtitle: "",
      event: "",
      img: "assets/images/Theraphosa-blondii-300x180.jpg",
      routeName: "" //da cambiare
  );

  final Items item3 = new Items(
      title: "Ragno3",
      subtitle: "",
      event: "",
      img: "assets/images/Euathlus-auratum-300x180.jpg",
      routeName: "/acanthoscurriaGeniculata" //da cambiare
  );

  final Items item4 = new Items(
      title: "Ragno4",
      subtitle: "",
      event: "",
      img: "assets/images/Grammostola-spatulata-300x180.jpg",
      routeName: "/acanthoscurriaGeniculata"
  );

  final Items item5 = new Items(
      title: "Ragno1",
      subtitle: "",
      event: "",
      img: "assets/images/Haplopelma-lividus-300x180.jpg",
      routeName: "/acanthoscurriaGeniculata"
  );

  @override
  Widget build(BuildContext context) {
    List<Items> _listItem = [item1, item2, item3, item4, item5];
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

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  String routeName;

  Items({this.title = '', this.subtitle = '', this.event = '', this.img = '', this.routeName = '',});
}
