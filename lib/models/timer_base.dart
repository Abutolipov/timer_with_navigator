import 'dart:async';

import 'package:flutter/material.dart';
import 'package:timer_cheers/models/qora_quti.dart';
class Soat extends StatefulWidget{
  static final id="slss";

  Soat({Key? key}) : super(key: key);
  @override
  State<Soat> createState() {
  return Ttimer();
  }
}
class Ttimer extends State<Soat>{
  int secondPassed=0;
  bool isActive=false;
  final duration=Duration(seconds: 1);
  Timer? timer;

  void handleTick(){
    if(isActive){
      setState((){
        secondPassed=secondPassed+1;
      });
    }
  }
  Widget build(BuildContext context){
    timer ??= Timer.periodic(duration, (Timer t) {
      handleTick();
    });

    int sec=secondPassed%60;
    int min=secondPassed~/60;
    int hour=secondPassed~/(60*60);

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Timer App",style: TextStyle(color:Colors.yellowAccent),),

        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Qora(value: hour.toString().padLeft(2,'0'), lable: 'HRS'),
                  Qora(value: min.toString().padLeft(2,'0'), lable: "MIN"),
                  Qora(value: sec.toString().padLeft(2,'0'), lable: "SEC"),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 40.0),
                child: RaisedButton(
                  child: Text(isActive?'Stop':'Start'),
                  onPressed: ((){
                    isActive=!isActive;
                  }),
                  color: Colors.deepPurpleAccent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
