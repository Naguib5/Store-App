import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
import 'package:store/screens/home_page.dart';
import 'package:store/screens/updatedproductpage.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        home_page.id: (context) =>const home_page(),
        UpdateProductpage.id: (context) => UpdateProductpage(),
      },
      initialRoute: home_page.id,
      // home: home_page(),
    );
  }
}
