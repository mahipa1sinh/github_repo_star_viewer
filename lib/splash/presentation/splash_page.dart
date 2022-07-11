import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 48.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Lottie.asset(
              'assets/animations/loading.json',
              repeat: true,
              reverse: false,
              animate: true,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RichText(
                  text: const TextSpan(
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 128, 91),
                        fontSize: 20,
                      ),
                      children: [
                        TextSpan(text: 'Buckle Up'),
                      ]),
                ),
                RichText(
                  text: const TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                      children: [
                        TextSpan(text: 'Launching your StarShip!!!'),
                      ]),
                ),
                const Icon(MdiIcons.rocketLaunch),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
