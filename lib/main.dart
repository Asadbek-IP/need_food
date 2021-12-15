import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:need_food/pages/splash_page/splash_page.dart';

void main(){
  runApp(NeedFood());
}
class NeedFood extends StatefulWidget {
  const NeedFood({Key? key}) : super(key: key);

  @override
  _NeedFoodState createState() => _NeedFoodState();
}

class _NeedFoodState extends State<NeedFood> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Montserrat",
      ),
      home: SplashPage(),
    );
  }
}
