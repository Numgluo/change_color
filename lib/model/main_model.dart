import 'package:flutter/material.dart';

class MainModel{

 static void chnageValue(double colorValue,value){
  if(value % 100.0 != value / 100.0){
      value = value.roundToDouble();
      colorValue = value;
    }
  return colorValue = value;
 }


}