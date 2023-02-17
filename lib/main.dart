
import 'package:flutter/material.dart';
import 'package:change_color/self_change_color.dart';
import 'package:change_color/template_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom
  ]);
  runApp(
    ProviderScope(
      child: MaterialApp(
        home:config()
      )
    )
  );
}

class config extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(MediaQuery.of(context).size.width,MediaQuery.of(context).size.height),
      minTextAdapt:true,
      splitScreenMode:true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: StartPage()
      );

  }

}

class StartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: AppBar(
        title:Text("Change Color!",
          style: TextStyle(
            fontSize: 32.sp,
          ),
        ),
        titleSpacing: ScreenUtil().setHeight(40),
        leadingWidth: _width * 0.5,
      ),
      body: Center(
        child:SafeArea(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child:Padding(
                    padding: EdgeInsets.symmetric(vertical: _height * 0.1, horizontal: _height * 0.1),
                    child:SizedBox(
                      width: _width * 0.5,
                      child:ElevatedButton(          //Display画面に遷移
                        child: Text('TEMPLATE',
                          style: TextStyle(
                            fontSize: 32.sp
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(context, 
                            MaterialPageRoute(
                              builder: (context){
                                return templatePage();
                              },  
                            ),
                          );
                        }, 
                      ),
                    ),
                  ),
                ),
               Expanded(
                  child:Padding(
                    padding: EdgeInsets.symmetric(vertical: _height * 0.1,horizontal: _width * 0.1),
                    child:SizedBox(
                      width: (_width * 0.5).w,
                      child:ElevatedButton(
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children:[
                            Text('SET',
                              style: TextStyle(
                                fontSize: 48.sp
                              ),
                            ),
                            Text('COLOR',
                              style: TextStyle(
                                fontSize: 48.sp
                              ),
                            ),
                          ]
                        ),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context){
                              return SelfChangeColor();
                            })
                          );
                        }, 
                      ),
                    ), 
                  ),
                ),
              ],            
            ),
          ),
        ),
    );     
  }
}
