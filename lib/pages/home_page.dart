
import 'package:flutter/material.dart';
import 'package:timer_cheers/models/timer_base.dart';

class HomePage extends StatefulWidget {

  static const id="sls";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return Soat();
            }));
          },
          color: Colors.deepPurpleAccent,
          child: Text("Timer Appga kirish"),
        ),
      ),
    );
  }
}
