
import 'package:flutter/material.dart';

class Qora extends StatelessWidget{
  String value;
  String lable;

  Qora({required this.value, required this.lable});
  @override
  Widget build(BuildContext context) {
    return Center(
        child:Container(
          margin: EdgeInsets.symmetric(horizontal: 3),
          padding: EdgeInsets.all(5),
          constraints: BoxConstraints.expand(width: 110, height: 100),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.black,
          ),
          child: Column(
            children: [
              Text('$value',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 50),),
              Text('$lable',style: TextStyle(color: Colors.white,),),
            ],
          ),
        )
    );
  }
}