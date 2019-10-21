import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2b2e36),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RawMaterialButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 22,
                    ),
                    shape: CircleBorder(),
                    elevation: 2.0,
                    fillColor: Color(0xff3f4249),
                    padding: EdgeInsets.all(12),
                  ),
                  Text(
                    "Secrets",
                    style: TextStyle(fontSize: 22, color: Color(0xff808286)),
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 22,
                    ),
                    shape: CircleBorder(),
                    elevation: 2.0,
                    fillColor: Color(0xff6fb742),
                    padding: EdgeInsets.all(12),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Card(
              color: Color(0xFF6bb23e),
              semanticContainer: true,
              elevation: 10,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                height: 400,
                width: MediaQuery.of(context).size.width / 1.2,
                padding: EdgeInsets.all(36),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      "Anna",
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 1,
                      width: 250,
                      padding: EdgeInsets.only(left: 560),
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 28),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 32),
                            child: Text(
                              "Of the people in this room who is the most amazing one ?",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 38),
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 150,
                      child: RawMaterialButton(
                        onPressed: () {},
                        child: Text(
                          "complete",
                          style:
                              TextStyle(fontSize: 22, color: Color(0xff6fb742)),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        elevation: 2.0,
                        fillColor: Color(0xff3f4249),
                        padding: EdgeInsets.all(12),
                      ),
                    ),
                    Container(
                      width: 150,
                      child: RawMaterialButton(
                        onPressed: () {},
                        child: Text(
                          "forfeit",
                          style:
                              TextStyle(fontSize: 22, color: Color(0xffff135c)),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        elevation: 2.0,
                        fillColor: Color(0xff3f4249),
                        padding: EdgeInsets.all(12),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
