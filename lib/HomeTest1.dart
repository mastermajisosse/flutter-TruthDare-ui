import 'package:flutter/material.dart';

// class HomeTest1 extends StatefulWidget {
//   @override
//   _HomeTest1State createState() => _HomeTest1State();
// }

// class _HomeTest1State extends State<HomeTest1> {
//   // bool selected = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("data"),
// ),
// body: GestureDetector(
//   onTap: () {
//     setState(() {
//       selected = !selected;
//     });
//   },
//   child: AnimatedContainer(
//     // width: selected ? 200.0 : 100.0,
//     width: selected ? 200.0 : 100.0,
//     height: selected ? 200.0 : 100.0,

//     // height: selected ? 500.0 : 50.0,
//     // color: selected ? Colors.red : Colors.blue,
//     alignment: selected ? Alignment.bottomCenter : Alignment.topCenter,
//     duration: Duration(seconds: 2),
//     curve: Curves.bounceOut,
//     // curve: Curves.easeIn,
//     // transform:,
//     child: Container(
//       decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           border: Border.all(
//               color: selected ? Colors.black : Colors.transparent)),
//     ),
//   ),
//   // bottomNavigationBar: bto,
// ));
//   }
// }

AnimationController rotationController;

class HomeTest1 extends StatefulWidget {
  @override
  _HomeTest1State createState() => _HomeTest1State();
}

class _HomeTest1State extends State<HomeTest1> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> positionAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });

    positionAnim = Tween<double>(begin: 0.0, end: 400).animate(_controller);
    // ..addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {}
    // });
    // _controller.fling();
    // _controller = Tween()
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  final appBar = AppBar(
    title: Text('Material App Bar'),
  );
  @override
  Widget build(BuildContext context) {
    final minHeight = MediaQuery.of(context).size.height -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      key: scaffoldKey,
      appBar: appBar,
      // bod
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          width: double.infinity,
          // child: Stack(
          //   children: <Widget>[
          //     AnimatedBuilder(
          //       animation: _controller,
          //       builder: (context, child) => Positioned(
          //           left: positionAnim.value, child: Icon(Icons.sync)),
          //     ),
          //     RaisedButton(
          //       child: Text("go"),
          //       onPressed: () => _controller.forward(),
          //     ),
          //     RaisedButton(
          //       child: Text("stop"),
          //       onPressed: () => _controller.reset(),
          //     ),
          //   ],
          // ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () => _controller.forward(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 60,
                padding: EdgeInsets.all(8),
                width: double.infinity,
                child: Text(
                  "data",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) => Container(
                  color: Colors.blueGrey,
                  width: positionAnim.value,
                  height: 60,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
