import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:splashscreens/Dashboard.dart';


//we r creating two types of splash screen to demonstrate that how actually splash Screen Works
//1)CustomSplashScreen  
//2)BuiltInSplashScreen

void main(){
  runApp(MyCustomSScreens());
}
class MyCustomSScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'SplashScreenDemos',
      home: Scaffold(
        body: MyCustomSScreen(),
      ),
    );
  }
}

class MyCustomSScreen extends StatefulWidget {
  @override
  _MyCustomSScreenState createState() => _MyCustomSScreenState();
}

class _MyCustomSScreenState extends State<MyCustomSScreen> {
double iconSize=24.0;
double radius=32.0;
Color colors=Colors.blue;
  @override
  void initState() {
    
    super.initState();
    Future.delayed(
      Duration(seconds: 4),
      (){
         setState(() {
       iconSize=40.0;
       radius=38.0;
       colors=Colors.white70;
     });

    
      }
    );
    Future.delayed(
     Duration(
      seconds: 8

     ),
    (){
      Navigator.push(context, MaterialPageRoute(
       builder: (context)=>( Dashboard())
    ));
    }
    );

    

  }
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(
          builder: (context)=>(Dashboard())
        ));
      },
          child: AnimatedContainer(
        height: 1000,
            duration: Duration(seconds: 4),
            color: Colors.black87,
            child: Column(
              children: <Widget>[
                Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(width: 1.0,color: Colors.white)
                  // ),
                  height: 300.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                          SizedBox(height: 110.0,),
                        AnimatedContainer(
                          duration: Duration(seconds: 4),
                          child: CircleAvatar(
                            radius:44.0,
                            backgroundColor: Colors.white38,
                            child: CircleAvatar(
                              radius: radius,
                              backgroundColor: Colors.blue,
                              child: FlutterLogo(size:iconSize),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                              CircleAvatar(
                                  radius: 44.0,
                          backgroundColor: Colors.white38,
                                child: CircleAvatar(
                                    radius: radius,
                            backgroundColor: Colors.blue,
                                  child: Icon(FontAwesomeIcons.laptop,color: Colors.white,size: iconSize,),
                                ),
                              ),
                              SizedBox(width: 13.0,),
                              CircleAvatar(
                                  radius: 44.0,
                          backgroundColor: Colors.white38,
                                child: CircleAvatar(
                                    radius: radius,
                            backgroundColor: Colors.blue,
                                  child: Icon(Icons.computer,color: Colors.white,size: iconSize,),
                                ),
                              )
                          ],
                        ),
                   
                    ],

                  ),
                ),
                SizedBox(height: 25.0,),
                Text("Splash Screen",
                  style: TextStyle(color: Colors.white70,
                  fontSize: 38.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
                  ),
                SizedBox(height: 85.0,),

              SpinKitWave(color: colors,type: SpinKitWaveType.center,size: 38.0,),
                  SizedBox(height: 80.0,),
                  Text("CustomSplash Screen\n         Version 1.0",
                  style: TextStyle(color: Colors.white54,
                  fontSize: 12.0),)
              ],
            ),
      ),
    );
      
  }
}

  