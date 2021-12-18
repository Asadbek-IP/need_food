import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:need_food/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 175,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/rectangle.png",
                    ),
                  )
                ),
                child: Image(
                  image: AssetImage(
                    "assets/images/logo.png",
                  ),
                ),
              ),
              Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Image(
                        image: AssetImage("assets/images/bg-image.png"),
                      ),
                    ),
                    Form(
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 90),
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    fontSize: 36, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(

                              padding: EdgeInsets.symmetric(horizontal: 10),
                              margin: EdgeInsets.symmetric(vertical: 8),
                              height: 50,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: "Login",
                                  border: OutlineInputBorder(

                                  ),
                                ),
                              ),
                            ),
                            Container(

                              padding: EdgeInsets.symmetric(horizontal: 10),
                              margin: EdgeInsets.symmetric(vertical: 8),
                              height: 50,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: "Parol",
                                  border: OutlineInputBorder(

                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "Forgot password ?"
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 50,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(50),
                              ),

                                child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 24),),

                              ),
                            SizedBox(height: 140,),
                            Column(
                              children: [
                                Text("No account yet"),
                                SizedBox(height: 3,),
                                Text("Sign up now",style: TextStyle(color: Colors.blue),),
                              ],
                            ),


                          ],
                        ),
                      ),
                    )
                  ],
                ),

            ],
          ),
        ),
      ),
    );
  }
}
