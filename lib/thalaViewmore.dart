import 'package:flutter/material.dart';
import 'thala2viewmore.dart';

class thalaViewmore extends StatelessWidget {
  const thalaViewmore({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: _homepage(),
    );
  }
}

class _homepage extends StatefulWidget {
  const _homepage({Key key}) : super(key: key);

  @override
  __homepageState createState() => __homepageState();
}

class __homepageState extends State<_homepage> {
  Widget block1() {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Center(
        child: Container(
          height: 90.0,
          width: 350.0,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.redAccent,
              ),
            ],
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/junaid_foam1.png'),
                      backgroundColor: Colors.white,

                      maxRadius: 35.0,
                      //child: Icon(
                      //Icons.account_circle,
                      //color: Colors.red,
                      //size: 60.0,
                      //),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text(
                  'Junaid Ahmad \nLahore,SKP\nAB+',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: ButtonTheme(
                      minWidth: 8.0,
                      height: 20.0,
                      splashColor: Colors.grey.shade400,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => thala2viewmore()),
                          );
                        },
                        color: Colors.white54,
                        child: Text(
                          'View more',
                          style: TextStyle(
                            fontSize: 8.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ], //children
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Thalassemia",
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: "Raleway-Regular",
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            block1(),
            block1(),
            block1(),
            block1(),
          ],
        ),
      ),
    );
  }
}
