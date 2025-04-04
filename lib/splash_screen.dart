import 'package:flutter/material.dart';
import 'dart:async';
import 'package:trans_module/mainScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

   
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainScreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      body: Stack(
        fit: StackFit.expand,
        children: [
       
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Color(0xFFD6E4FF)], 
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

       
          Center(
            child: FadeTransition(
              opacity: _opacityAnimation,
              child: Image.asset(
                'assets/icons/splashlogo.png',
                width: MediaQuery.of(context).size.width * 0.4, 
                fit: BoxFit.contain,
              ),
            ),
          ),

      
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
