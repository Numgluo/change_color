import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:change_color/display.dart';
import 'package:change_color/self_change_color_text.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


final currentRedValue = StateProvider((ref){
  return 0.0;
});

final currentGreenValue = StateProvider((ref){
  return 0.0;
});

final currentBlueValue = StateProvider((ref){
  return 0.0;
});
final currentOpacityValue = StateProvider((ref){
  return 1.0;
});

class SelfChangeColor extends ConsumerWidget{
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
 final _height = MediaQuery.of(context).size.height;
 final _width = MediaQuery.of(context).size.width;

 final changeRedValue = ref.watch(currentRedValue);
 final changeGreenValue = ref.watch(currentGreenValue);
 final changeBlueValue = ref.watch(currentBlueValue);
 final changeOpacityValue = ref.watch(currentOpacityValue);
 
    return MaterialApp(
      home:Scaffold(
        body:Container(
          padding: EdgeInsets.only(top: _height * 0.05),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[      
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:<Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget>[
                        Text('Red',
                          style: TextStyle(
                            fontSize: 21.h,
                            color:Colors.red,
                          ),
                        ),
                        Text( "$changeRedValue",
                          style: TextStyle(
                            fontSize:21.h,
                          ),
                        ),
                      ],    
                    ),
                    SizedBox(
                      height:_height * 0.1,
                      width:_width * 0.9,
                      child:CupertinoSlider(
                        value: changeRedValue,
                        divisions: 255,
                        max: 255.0,
                        min: 0.0,
                        activeColor: CupertinoColors.systemRed,
                        thumbColor: CupertinoColors.systemRed,              
                        onChanged: (double value) {
                            if(value % 100.0 != value / 100.0){
                              value = value.roundToDouble(); 
                            }
                            ref.read(currentRedValue.notifier).state = value;
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget>[
                        Text('Green',
                          style: TextStyle(
                            fontSize:21.h,
                            color:Colors.green
                          ),
                        ),
                        Text( "$changeGreenValue",
                          style: TextStyle(
                            fontSize:21.h,
                          ),
                        ),
                      ],    
                    ),
                    SizedBox(
                      height:_height*0.1,
                      width:_width * 0.9,
                      child:CupertinoSlider(
                        key: const Key('sliderG'),
                        value: changeGreenValue  ,
                        divisions: 255,
                        max: 255.0,
                        min: 0.0,
                        activeColor: CupertinoColors.systemGreen,
                        thumbColor: CupertinoColors.systemGreen,
                        onChanged: (double value) {
                            if(value % 100.0 != value / 100.0){
                              value = value.roundToDouble(); 
                            }
                            ref.read(currentGreenValue.notifier).state = value;
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget>[
                        Text('Blue',
                          style: TextStyle(
                            fontSize:21.h,
                            color:Colors.blue
                            ),
                          ),
                        Text( '$changeBlueValue',
                          style: TextStyle(
                            fontSize:21.h,
                          ),
                        ),
                      ],    
                    ),
                    SizedBox(
                      height:_height*0.1,
                      width:_width * 0.9,
                      child:CupertinoSlider(
                        key: const Key('sliderB'),
                        value: changeBlueValue  ,
                        divisions: 255,
                        max: 255.0,
                        min: 0.0,
                        activeColor: CupertinoColors.systemBlue,
                        thumbColor: CupertinoColors.systemBlue,
                        onChanged: (double value) {
                            if(value % 100.0 != value / 100.0){
                              value = value.roundToDouble(); 
                            }
                            ref.read(currentBlueValue.notifier).state = value;
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget>[
                        Text('Opacity',
                          style: TextStyle(
                            fontSize:21.h,
                            color:Colors.grey
                          ),
                        ),
                        Text( '$changeOpacityValue',
                          style: TextStyle(
                            fontSize:21.h,
                          ),
                        ),
                      ],    
                    ),  
                    SizedBox(
                      height:_height * 0.1,
                      width:_width * 0.9,
                      child:CupertinoSlider(
                        key: const Key('sliderOpacity'),
                        value: changeOpacityValue  ,
                        divisions: 10,
                        max: 1.0,
                        min: 0.0,
                        activeColor: Colors.black,
                        thumbColor: Colors.black,
                        onChanged: (double value) {

                            ref.read(currentOpacityValue.notifier).state = value;

                        },
                      ),
                    ),                
                  ],     
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: _height * 0.05,horizontal: _width * 0.1),
                  child:Container(
                    color: Color.fromRGBO(
                      changeRedValue.toInt(), changeGreenValue.toInt(), changeBlueValue.toInt(), changeOpacityValue,
                    ),
                    child:SizedBox(
                      width: double.infinity,
                      height:_height * 0.2
                    ),                   
                  ),
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                    Padding(
                      padding: EdgeInsets.only(right: _width * 0.2),
                      child:SizedBox(
                        height: _height * 0.07,
                        width: _width * 0.3,
                        child:ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context){
                                return Display(
                                  changeRedValue.toInt(), changeGreenValue.toInt(), changeBlueValue.toInt(), changeOpacityValue,);
                              })
                            );
                          },
                          child: Text('Display',
                            style: TextStyle(
                              fontSize: 25.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: _height * 0.07,
                      width: _width * 0.3,
                      child:ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context){
                              return SelfonText();
                            })
                          );
                        },
                        child: Text('text',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(25)
                          ),
                        ),
                      ),        
                    ),
                  ],
                ),
              ],           
            ),
          ),
        ),
     );
    }
  }
