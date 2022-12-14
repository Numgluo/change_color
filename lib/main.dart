
import 'package:flutter/material.dart';
import 'package:change_color/self_change_color.dart';
import 'package:change_color/template_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//googleplayStoreに登録する。そして、広告を付ける。クリック型の広告が望ましいかな？アドネットワークに登録するらしい。
//2022/12/04 ぎり公開までいけてない。プライバシーポリシーを設定する必要があるので、githubpagesでプライバシーポリシーを作成する。
//すぐ下のSystemCromeは変えた方がいいいよ。たぶん
//githubに専用のページを作る。

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
      designSize: const Size(360,712),
      minTextAdapt:true,
      splitScreenMode:true,
      builder: (context, child) {
        return MaterialApp(
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
        title:const Text("Change Color!",
          style: TextStyle(
            fontSize: 32,
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
                    padding: EdgeInsets.symmetric(vertical: _height * 0.05,horizontal: _height * 0.05),
                    child:SizedBox(
                      height: _height * 0.1,
                      width:  _width * 0.4,
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
                    padding: EdgeInsets.symmetric(vertical: _height * 0.05,horizontal: _height * 0.05),
                    child:SizedBox(
                      height: _height * 0.1,
                      width: _width * 0.4,
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
