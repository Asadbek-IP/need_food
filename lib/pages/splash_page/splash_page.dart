
import 'package:flutter/material.dart';
import 'package:need_food/pages/splash_page/companents/body.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  List<Map<String,String>>? _list =[
    {
      'text' : "Pilih menu\nfavoritemu",
      "image":"assets/images/fastfood1.png",
    },
    {
      'text' : "Temukan\nharga terbaik",
      "image":"assets/images/fastfood2.png",
    },
    {
      'text' : "Makananmu\nsiap diantarkan ",
      "image":"assets/images/fastfood3.png",
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
