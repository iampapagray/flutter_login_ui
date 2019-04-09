import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login Interface',
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: new LoginPage(title: 'Login Interface'),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // f45d27
  // f5851f

  @override
  void initState(){
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.8,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors:[
                    Color(0xFFf45d27),
                    Color(0xFFf5851f)
                  ]
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100.0),
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.person, 
                    size: 100.0, 
                    color: Colors.white
                  ),
                  // Align(
                  //   alignment: Alignment.bottomRight,
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(
                  //       top: 52.0,
                  //       right:32.0
                  //     ),
                  //     child: Text('Login',
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 18.0
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ]
              )
            ),

            Container(
              height: MediaQuery.of(context).size.height/2.8,
              width: MediaQuery.of(context).size.width/1.2,
              padding: EdgeInsets.only(top:48.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      left:16.0, right:16.0
                    ),
                    decoration: BoxDecoration(
                      color:Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color:Colors.black12,
                          blurRadius:5.0
                        )
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0)
                      )
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        icon: Icon(
                          Icons.email, 
                          color:Colors.grey
                        )
                      )
                    )
                  ),

                  Container(
                    margin:EdgeInsets.only(top:16.0),
                    padding: EdgeInsets.only(
                      left:16.0, right:16.0
                    ),
                    decoration: BoxDecoration(
                      color:Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color:Colors.black12,
                          blurRadius:5.0
                        )
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0)
                      )
                    ),
                    child: TextField(
                      obscureText:true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        icon: Icon(
                          Icons.vpn_key, 
                          color:Colors.grey
                        )
                      )
                    )
                  ),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top:10.0
                      ),
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(
                          color:Colors.grey
                        )
                      )
                    )
                  )
                ]
              )
            ),

            Container(
              width: MediaQuery.of(context).size.width/1.2,
              height:45.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors:[
                    Color(0xFFf5851f),
                    Color(0xFFf45d27)
                  ]
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(50.0)
                )
              ),
              child: Center(
                child: Text(
                  'Login'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight:FontWeight.bold
                  )
                )
              )
            ),

            Container(
              width: MediaQuery.of(context).size.width/1.2,
              height: MediaQuery.of(context).size.height/4.8,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom:32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'No account?',
                        style: TextStyle(
                          color: Colors.grey
                        )
                      ),
                      Text(
                        ' Register Here!',
                        style: TextStyle(
                          color: Color(0xFFf45d27),
                          fontWeight:FontWeight.bold
                        )
                      ),
                    ]
                  )
                )
              )
            )
          ]
        ),
      ),
    );
  }
}
