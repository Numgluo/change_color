import 'package:flutter/material.dart';

class Display extends StatelessWidget{

   Display(this.r, this.g, this.b,this._opacity);

  
  int r;
  int g;
  int b;
  double _opacity; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(r,g,b, _opacity),
      ),
    );
  }

}