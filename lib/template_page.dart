import 'package:flutter/material.dart';
import 'package:change_color/display_temp.dart';

class templatePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final List<Widget> list = [
      colorBuilder(context,Colors.black),
      colorBuilder(context,Colors.white),
      colorBuilder(context,Colors.amber),
      colorBuilder(context,Colors.grey),
      colorBuilder(context,Colors.blueGrey),
      colorBuilder(context,Colors.lightGreen),
      colorBuilder(context,Colors.red),
      colorBuilder(context,Colors.lime),
      colorBuilder(context,Colors.blue),
      colorBuilder(context,Colors.brown),
      colorBuilder(context,Colors.purple),
      colorBuilder(context,Colors.lightBlue),
      colorBuilder(context,Colors.green),
      colorBuilder(context,Colors.pink),
      colorBuilder(context,Colors.teal),
      colorBuilder(context,Colors.yellow),
      colorBuilder(context,Colors.orange),
      colorBuilder(context,Colors.deepPurple),
      colorBuilder(context,Colors.indigo),
      colorBuilder(context,Colors.cyanAccent),
      ];
    return MaterialApp( 
      home:Scaffold(
        body:GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          children: list,
        ),

      )
    );
  }

  Widget colorBuilder(BuildContext context,Color _color){
    return 
        Container(
          color: _color,
          child:GestureDetector(
            onTap:() {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context){
                  return DisplayTemp(color: _color,);
                })
              );
            },
          )
        );
  }
}