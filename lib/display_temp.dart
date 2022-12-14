import 'package:flutter/material.dart';

class DisplayTemp extends StatelessWidget{
  DisplayTemp({
    required Color this.color,
  });

  Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: color,
      )
    );
    
  }
}

