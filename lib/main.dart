import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() => runApp(
    MaterialApp(title: 'Tools',
        debugShowCheckedModeBanner: false,
        home: Tools()));
class Tools extends StatelessWidget {
  @override
  final toolname = ['toolname1','toolname2','toolname3','toolname4','toolname5','toolname6','toolname7'
    ,'toolname8','toolname9','toolname10'];

  final image = ['image1.jpg','image2.jpg','image3.jpg','image4.jpg','image5.jpg','image6.jpg','image7.jpg'
    ,'image8.jpg','image9.jpg','image10.jpg'];

  final description = ['description1','description2','description3','description4','description5','description6','description7'
    ,'description8','description9','description10'];

  Widget build(BuildContext context) {
   return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(
              'SCIEnT TOOLS', style: TextStyle(color: Colors.black))),
          backgroundColor: Colors.amber,
          bottom: TabBar(
            labelColor: Colors.black,
            tabs: <Widget>[
              Text('ELECTRICAL TOOLS'),
              Text('MECHANICAL TOOLS'),
            ],
          ),),
        body: TabBarView(
          children: [
            GridView.count(
              crossAxisCount: 2,
              children: List.generate(10, (index) {
                return Center(
                  child: InkWell(
                    onTap: () {
                      print("Container clicked");
                      String tool = toolname[index];
                      String toolimage = image[index];
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Individualtoolelectrical(tool,toolimage),
                      ));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(color: Colors.greenAccent,
                          image: DecorationImage(
                              image: new AssetImage(
                            "assets/images/${image[index]}",
                          ),),
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.black,
                              blurRadius: 2.0,
                            ),
                          ]),

                      child: Center(
                        child: Text(toolname[index],),
                      ),
                    ),
                  ),
                );
              }),
            ), GridView.count(
              crossAxisCount: 2,
              children: List.generate(10, (index) {
                return Center(
                    child: InkWell(
                      onTap: () {
                        print("Container clicked");
                        String tool = toolname[index];
                        String toolimage = image[index];
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Individualtoolmechanical(tool,toolimage),
                        ));
                      },
                    child: new Card(
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(color: Colors.greenAccent,
                              image: DecorationImage(
                                image: new AssetImage(
                                  "assets/images/${image[index]}",
                                ),),
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 2.0,
                                ),
                              ]),

                          child: Center(
                            child: Text(toolname[index],
                            ),
                          ),
                        ))));
              }),
            ),
          ],
        ),
      ),

    );
  }
  }

class Individualtoolelectrical extends StatefulWidget {
  String tool;
  String toolimage;
  Individualtoolelectrical(this.tool, this.toolimage);
  @override
  State<StatefulWidget> createState() {
    return Individualtoolelectricalstate(this.tool,this.toolimage);
  }}
class Individualtoolelectricalstate extends State<Individualtoolelectrical> {
  String tool;
  String toolimage;

  Individualtoolelectricalstate(this.tool,this.toolimage);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('PROJECTS'),

      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Card(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.greenAccent,
                    image: DecorationImage(
                    image: new AssetImage(
                    "assets/images/${toolimage}",
                  ),),
                  ),
                ),),
                Card(
                  child: Container(
                    child: Center(child: Text(tool, style: TextStyle(color: Colors.black,fontSize: 28))
                            ),
                    color: Colors.amberAccent),
                ),
                 Card(
        child: Container(
            child: Center(child: Text('description', style: TextStyle(color: Colors.black,fontSize: 28))
            ),
            color: Colors.amberAccent),
      ),]
      ),),),));}}
class Individualtoolmechanical extends StatefulWidget {
  Individualtoolmechanical(this.tool,this.toolimage);
  String tool;
  String toolimage;
  @override
  State<StatefulWidget> createState() {
    return Individualtoolmechanicalstate(this.tool,this.toolimage);
  }}
class Individualtoolmechanicalstate extends State<Individualtoolmechanical> {
  String tool;
  String toolimage;
  Individualtoolmechanicalstate(this.tool, this.toolimage);
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('PROJECTS'),

        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(80.0),
            child: Container(
              height: 200,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Card(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(color: Colors.greenAccent,
                          image: DecorationImage(
                            image: new AssetImage(
                              "assets/images/${toolimage}",
                            ),),
                        ),
                      ),),

                    Card(
                      child: Container(
                          child: Center(child: Text(tool, style: TextStyle(color: Colors.black,fontSize: 28))
                          ),
                          color: Colors.amberAccent),
                    ),
                    Card(
                      child: Container(
                          child: Center(child: Text('description', style: TextStyle(color: Colors.black,fontSize: 28))
                          ),
                          color: Colors.amberAccent),
                    ),]
              ),),),));}}

