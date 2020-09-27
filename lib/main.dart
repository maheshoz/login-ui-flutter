import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login UI",
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
              color: Colors.black54,
              colorBlendMode: BlendMode.darken,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    "assets/images/flutter-logo-small.png",
                    height: 120.0,
                    width: 120.0,
                  ),
                ),
                Stack(
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        width: 350.0,
                        height: 300.0,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 25.0,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 16.0),
                              child: TextField(
                                autocorrect: false,
                                autofocus: false,
                                style: TextStyle(fontSize: 20.0),
                                decoration: InputDecoration(
                                    hintText: "Username",
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.grey[200],
                                    contentPadding: EdgeInsets.all(15.0)),
                              ),
                            ),
                            TextField(
                              autocorrect: false,
                              autofocus: false,
                              obscureText: true,
                              style: TextStyle(fontSize: 20.0),
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  contentPadding: EdgeInsets.all(15.0)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                            MaterialButton(
                              onPressed: (){},
                              color: Colors.green,
                              minWidth: 200.0,
                              padding: EdgeInsets.symmetric(vertical: 12.0),
                              splashColor: Colors.green[800],
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
