import 'dart:wasm';

import 'package:exx/home.dart';
import 'package:exx/splash_screen.dart';
import 'package:flutter/material.dart';



void main() =>  runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      title: "  CET Groups ",

    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override


  List<String> groups = [ ];
  final controller = TextEditingController();

  Widget build(context) => Scaffold(

    floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,


      child: Text('log in '),


        onPressed: (){

          Navigator.push(context, new MaterialPageRoute(

              builder: (context)=> home()

          )
          );

        },


    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    body: ListView (

    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.deepOrange,
            radius: 50.0,
            child: Icon(
              Icons.movie_creation,
              color: Colors.white,

              size: 100.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.0),
          ),

        ],
      ),
      new ListTile(
        leading: const Icon(Icons.email),
        title: new TextField(
          decoration: new InputDecoration(
            hintText: "email",
          ),
        ),
      ),
      new ListTile(
        leading: const Icon(Icons.add),
        title: new TextField(
          decoration: new InputDecoration(
            hintText: "passorwd",
          ),
        ),
      ),




    ],
  ),

  );

}
class page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Create Student"),

      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("CET Students Manager"),
              subtitle: Text("CET app "),
            ),
            new ListTile(
              title: new Text("groups"),
              trailing: new Icon(Icons.group),

            ),
            new ListTile(
              title: new Text("Notifications"),
              trailing: new Icon(Icons.notifications_active),
            ),
            new ListTile(
              title: new Text("about app"),
              trailing: new Icon(Icons.announcement ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueGrey,
          child: Text('+'),
          onPressed: (){ }



      ),
      body: Container(
        child: Center(
          child: Text(
            'No students yet \n'
                'Please add your students now',
            style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),
          ),

        ),
      ),
    );

  }




}
