import 'package:flutter/material.dart';
import 'package:multipleprovider/homepage.dart';
import 'package:multipleprovider/simpleprovider.dart';
import 'package:multipleprovider/testmultiprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.o
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>multiprovider()),
        ChangeNotifierProvider(create: (_)=> simglevalue()),

      ],

      child:MaterialApp(
        home: homepage(),
      ),
    );
  }
}


