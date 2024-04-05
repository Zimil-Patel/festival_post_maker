import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:festival_post_maker/views/screens/template%20view%20screen/components/bottom_decoration.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late TextScaler textSize;
  @override
  Widget build(BuildContext context) {
    textSize = MediaQuery.of(context).textScaler;

    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, '/home');
      },
    );

    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            bottomDecoration(textSize: textSize),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  color: secondaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
