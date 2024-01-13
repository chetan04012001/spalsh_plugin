library splash_plugin;

import 'package:flutter/material.dart';

class SplashPlugin extends StatefulWidget {
  final Widget nextScreen;
  final String imagePath;
  final String welcomeText;
  final Duration duration;

  SplashPlugin({
    Key? key,
    required this.nextScreen,
    required this.imagePath,
    required this.welcomeText,
    required this.duration,
  }) : super(key: key);

  @override
  State<SplashPlugin> createState() => _SplashPluginState();
}

class _SplashPluginState extends State<SplashPlugin> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  _navigateToNextScreen() async {
    // You can perform any asynchronous operations here if needed
    await Future.delayed(widget.duration);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => widget.nextScreen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                widget.imagePath,
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                widget.welcomeText,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
