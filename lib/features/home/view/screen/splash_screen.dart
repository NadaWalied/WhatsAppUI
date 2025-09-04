import 'package:flutter/material.dart';

import '../widget/navigator_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navTo() {
    Future.delayed(
      const Duration(seconds: 4),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NavigatorWidget()),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    navTo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/img_6.png"),
            const SizedBox(height: 300),
            const Text(
              "From Meta",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            const Icon(Icons.all_inclusive,),

          ],
        ),
      ),
    );
  }
}
