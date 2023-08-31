import 'package:calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void initState() {
    super.initState();
    // Wait for 3 seconds and then navigate to the next screen
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => CalculatorApp()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 200,
              width: 200,
              child: Lottie.asset("assets/images/one.json")),
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Text("MyCalculator",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
          )),
        ],
      )
    );
  }
}
