import 'package:flutter/material.dart';
import 'package:kora/HomeTest1.dart';
import 'package:kora/model.dart';
import 'package:kora/service.dart';
import 'package:kora/view/MyHome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just a Title',
      debugShowCheckedModeBanner: false,
      home: HomeTest1(),
    );
  }
}

// class MYmy extends StatefulWidget {
//   @override
//   _MYmyState createState() => _MYmyState();
// }

// class _MYmyState extends State<MYmy> {
//   bool callApi = true;
//   ProfileService profileService;
//   // List<ProfileService> artticleList;
//   Profilemodel profilemodel;

//   @override
//   void initState() {
//     super.initState();
//     setState(() {
//       callApi = true;
//     });
//     profileService = ProfileService();
//     // artticleList;
//     profileService.getLists().then((data) {
//       if (data == null) {
//         print('citykhawya');
//       }
//       setState(() {
//         profilemodel = data;
//         callApi = false;
//       });
//       print(profilemodel.lastname);
//       // print(artticleList[0].image);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
