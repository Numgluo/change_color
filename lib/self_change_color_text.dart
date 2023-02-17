import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:change_color/display.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentRedValue = StateProvider((ref){
  return "0";
});

final currentGreenValue = StateProvider((ref){
  return "0";
});

final currentBlueValue = StateProvider((ref){
  return "0";
});
final currentOpacityValue = StateProvider((ref){
  return "1.0";
}); 
 
class SelfonText extends ConsumerWidget{

  final snackBarInt = const SnackBar(
    content: Text('the range is [0 <= x <= 255], please review your inputs. Example 123'),
  );
  
  final snackBarDouble = const SnackBar(
    content: Text('the range is [0.0 < x <= 1.0], please review your input. Example 0.3'),
  );

  Widget build(BuildContext context, WidgetRef ref) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    final changeRedValue = ref.watch(currentRedValue);
    final changeGreenValue = ref.watch(currentGreenValue);
    final changeBlueValue = ref.watch(currentBlueValue);
    final changeOpacityValue = ref.watch(currentOpacityValue);

    return Scaffold( 
      body:SingleChildScrollView(
        child:Container(
          padding:EdgeInsets.only(top: _height * 0.05),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:<Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text('R:',
                    style: TextStyle(
                      fontSize:ScreenUtil().setSp(25),
                      color: Colors.red,
                    ),
                  ),
                  Text(changeRedValue,
                    style: TextStyle(
                      fontSize:ScreenUtil().setSp(25),
                    ),
                  ),
                ],
              ),
              SizedBox(
<<<<<<< HEAD
                height: (_height * 0.1).h,
                width: (_width * 0.8).w,
=======
                width:_width * 0.8,
>>>>>>> 1f260bfa45bb7b53a4597892985e86cdbfc2d329
                child:TextField(
                  textAlign:TextAlign.center,
                  keyboardType: TextInputType.number,
                  maxLength: 3,
                  inputFormatters:[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: const InputDecoration(
                    hintText:  '0 <= x <= 255',
                  ),
                  style: const TextStyle(color: Colors.red),
                  obscureText: false,
                  maxLines:1 ,
                  onChanged: (String r){
<<<<<<< HEAD
                  
                    ref.read(currentRedValue.notifier).state = r;
                  
=======

                    ref.read(currentRedValue.notifier).state = r;

>>>>>>> 1f260bfa45bb7b53a4597892985e86cdbfc2d329
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text('G:',
                    style: TextStyle(
                      fontSize:ScreenUtil().setSp(25),
                      color: Colors.green,
                    ),
                  ),
                  Text(changeGreenValue,
                    style: TextStyle(
                      fontSize:ScreenUtil().setSp(25),
                    ),
                  ),
                ],
              ),
              SizedBox(
<<<<<<< HEAD
                height: (_height * 0.1).h,
                width: (_width * 0.8).w,
=======
                width:_width * 0.8,
>>>>>>> 1f260bfa45bb7b53a4597892985e86cdbfc2d329
                child:TextField(
                  textAlign:TextAlign.center,
                  keyboardType: TextInputType.number,
                  maxLength: 3,
                  inputFormatters:[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: const InputDecoration(
                    hintText:  '0 <= x <= 255',
                  ),
                  style: const TextStyle(color: Colors.green),
                  obscureText: false,
                  maxLines:1 ,
                  onChanged: (String g){

<<<<<<< HEAD
                    ref.read(currentGreenValue.notifier).state = g;
                    },
                ),
=======
                      ref.read(currentGreenValue.notifier).state = g;

                  },
              ),
>>>>>>> 1f260bfa45bb7b53a4597892985e86cdbfc2d329
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text('B:',
                    style: TextStyle(
                      fontSize:ScreenUtil().setSp(25),
                      color: Colors.blue,
                    ),
                  ),
                  Text(changeBlueValue,
                    style: TextStyle(
                      fontSize:ScreenUtil().setSp(25),
                    ),
                  ),
                ]
              ),
              SizedBox(
<<<<<<< HEAD
                height: _height * 0.1,
                width: _width * 0.8,
=======
                width:_width * 0.8,
>>>>>>> 1f260bfa45bb7b53a4597892985e86cdbfc2d329
                child:TextField(
                  textAlign:TextAlign.center,
                  keyboardType: TextInputType.number,
                  maxLength: 3,
                  inputFormatters:[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: const InputDecoration(
                    hintText:  '0 <= x <= 255',
                  ),
                  style: const TextStyle(color: Colors.blue),
                  obscureText: false,
                  maxLines:1 ,
                  onChanged: (String b){
<<<<<<< HEAD
                  
                    ref.read(currentBlueValue.notifier).state = b;  
                
=======

                      ref.read(currentBlueValue.notifier).state = b;  

>>>>>>> 1f260bfa45bb7b53a4597892985e86cdbfc2d329
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("O:",
                    style: TextStyle(
                      fontSize:ScreenUtil().setSp(25),
                      color: Colors.grey,
                    ),
                  ),
                  Text(changeOpacityValue,
                    style: TextStyle(
                      fontSize:ScreenUtil().setSp(25),
                    ),
                  ),
                ],
              ),
              SizedBox(
<<<<<<< HEAD
                height: _height * 0.1,
                width: _width * 0.8,
=======
                width:_width * 0.8,
>>>>>>> 1f260bfa45bb7b53a4597892985e86cdbfc2d329
                child:TextField(
                  textAlign:TextAlign.center,
                  maxLength: 4,
                  keyboardType: const TextInputType.numberWithOptions(signed:true, decimal: true ),
                  decoration: const InputDecoration(
                    hintText:  '0.0 < x <= 1.0',
                  ),
                  style: const TextStyle(color: Colors.black),
                  obscureText: false,
                  maxLines:1 ,
                  onChanged: (String o){
<<<<<<< HEAD
                  
                    ref.read(currentOpacityValue.notifier).state = o;
                
                  },
                ),
=======

                      ref.read(currentOpacityValue.notifier).state = o;

                  },
                ),
              ),
              SizedBox(
                height:_height * 0.01
>>>>>>> 1f260bfa45bb7b53a4597892985e86cdbfc2d329
              ),
              Container(         
                color: boolNullDouble(changeOpacityValue)&&boolNullInt(changeRedValue, changeGreenValue, changeBlueValue)
                  ? Color.fromRGBO(
                    int.parse(changeRedValue), int.parse(changeGreenValue), int.parse(changeBlueValue), double.parse(changeOpacityValue),
                  )
                  :const Color.fromRGBO(
                    0,0,0,1,
                  ),
                child:SizedBox(
<<<<<<< HEAD
                  height: _height * 0.2,
                  width: _width * 0.8,
=======
                  height: _height * 0.16,
                  width: _width * 0.8,  
>>>>>>> 1f260bfa45bb7b53a4597892985e86cdbfc2d329
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
<<<<<<< HEAD
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, _height * 0.05,  _width * 0.2,0),
                      child:SizedBox(
                        height: _height * 0.07,
                        width: (_width * 0.25).w,
                      child:ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                          },
                        child: Text("back",
                          style: TextStyle(
                            fontSize:ScreenUtil().setSp(25),
=======
                  Padding(
                    padding: EdgeInsets.only(right:_width * 0.2),
                    child:SizedBox(
                      child:ElevatedButton(
                        onPressed: (){
                            Navigator.of(context).pop();
                          },
                        child: Text("back",
                          style: TextStyle(
                            fontSize:ScreenUtil().setSp(32),
>>>>>>> 1f260bfa45bb7b53a4597892985e86cdbfc2d329
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
<<<<<<< HEAD
                    padding: EdgeInsets.only(top: _height * 0.05),
                    child:SizedBox(
                      height: _height * 0.07,
                      width: _width * 0.3,
                    child:ElevatedButton(
                      onPressed: (){
                        if(errorLog(context,changeRedValue, changeGreenValue, changeBlueValue, changeOpacityValue)){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context){
                              return Display(int.parse(changeRedValue), int.parse(changeGreenValue), int.parse(changeBlueValue), double.parse(changeOpacityValue));
                              }
                            )
                          );
                        }
                      },
                      child: Text("Display",
                        style: TextStyle(
                          fontSize:ScreenUtil().setSp(25),
=======
                    padding: EdgeInsets.symmetric(vertical: _height * 0.05),
                    child:SizedBox(
                      child:ElevatedButton(
                        onPressed: (){
                          if(errorLog(context,changeRedValue, changeGreenValue, changeBlueValue, changeOpacityValue)){
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context){
                                return Display(int.parse(changeRedValue), int.parse(changeGreenValue), int.parse(changeBlueValue), double.parse(changeOpacityValue));
                                }
                              )
                            );
                          }
                        },
                        child: Text("Display",
                          style: TextStyle(
                            fontSize:ScreenUtil().setSp(32),
                          ),
>>>>>>> 1f260bfa45bb7b53a4597892985e86cdbfc2d329
                        ),
                      ),
                    ),
                  ),
<<<<<<< HEAD
                  )
                ],
              ),
=======
                ]
              )
>>>>>>> 1f260bfa45bb7b53a4597892985e86cdbfc2d329
            ],
          ),
          ),
      ),
    );
  }

  //int値がnullでないか判断する。
  bool boolNullInt(String r, g, b){
    if(int.tryParse(r) == null){
      return false;
    }
    if(int.tryParse(g) == null){
      return false;
    }
    if(int.tryParse(b) == null){
      return false;
    }
    return true;
  }

  //opacityがnullであるか どうかを判定する。
  bool boolNullDouble(String y){
    if(double.tryParse(y) == null){
      return false;
    }
    else{
      return true;
    }
  }

  //値に問題がないかどうか。あればDisplayに遷移できる。
  bool errorLog(BuildContext context, String r,g,b,y){
    List el = [r,g,b];

    for(int i = 0; i < 3; i++){
      if(int.parse(el[i]) > 255){
      ScaffoldMessenger.of(context).showSnackBar(snackBarInt);
      return false;
      }
    }
    if(double.tryParse(y) == null){
      ScaffoldMessenger.of(context).showSnackBar(snackBarDouble);
      return false;
    }
    if(double.parse(y) > 1.0 || double.parse(y) == 0.0){
      ScaffoldMessenger.of(context).showSnackBar(snackBarDouble);
      return false;
    }
    return true;
  }
  
}