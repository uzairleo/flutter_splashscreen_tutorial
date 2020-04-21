import 'package:flutter/material.dart';
import 'package:splashscreens/BuiltInSplashScreen.dart';


class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
           appBar: AppBar(
             title: Text("DashBoard"),
             centerTitle: true,
             leading: null,
             
           ),
           body: Center(
             child:Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: RaisedButton(
                     color: Colors.red,
                     child: Text("Builtin SplashScreenWidger",style: TextStyle(color: Colors.white),),
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(
                          builder:(context){
                            return BuiltInSplashScreen();
                          }
                        ));
                      },
                   ),
                 )
               ],
             )
           ),
        
    );
  }
}