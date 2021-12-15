import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:need_food/constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage=0;
  PageController _pageController =PageController();
  List<Map<String, String>> _list = [
    {"text": "Pilih menu\nfavoritemu", "image": "assets/images/fastfood1.png"},
    {
      "text": "Temukan harga terbaik",
      "image": "assets/images/fastfood2.png",
    },
    {
      "text": "Makananmu siap diantarkan ",
      "image": "assets/images/fastfood3.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: PageView.builder(
                controller: _pageController,
                itemCount: 3,
                onPageChanged: (value){
                  setState(() {
                    currentPage=value;

                  });
                },
                itemBuilder: (context, index) => SplashContent(
                  image: _list[index]["image"]!,
                  text: _list[index]["text"]!,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: List.generate(
                        _list.length,
                        (index) => dot(index: index),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                         if(_pageController.hasClients){
                           _pageController.nextPage(
                               duration: Duration(milliseconds: 250), curve: Curves.easeInOut);
                         }
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 30,),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer dot({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      margin: EdgeInsets.only(right: 10),
      width: currentPage==index?50:20,
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(currentPage==index?10:70),
        color: currentPage==index?kRed:kRedLight,
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({Key? key, required this.text, required this.image})
      : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image(
                  image: AssetImage('assets/images/burger.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Text(
                  "NeedFood",
                  style: TextStyle(fontSize: 24),
                ),
              )
            ],
          ),
          Image(
            image: AssetImage(image),
            height: 380,
            width: 355,
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Text(
              text,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Text(
              'Ada banyak jenis makanan\nyang tersedia disini',
              style: TextStyle(fontSize: 18, color: kGrey),
            ),
          ),
        ],
      ),
    );
  }
}
