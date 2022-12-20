import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration:
            const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/brickwall.png'), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 48),
                  child: Row(
                    children: const [
                      Icon(Icons.chair),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Furniture Shop',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 48),
                  child: RichText(
                      textAlign: TextAlign.left,
                      text: const TextSpan(children: [
                        TextSpan(
                            text: 'Find your\nminimalist',
                            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black)),
                        TextSpan(text: '*\n', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.red)),
                        TextSpan(
                            text: 'Foundation\nfor your room',
                            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black))
                      ])),
                ),
              ],
            ),
            Positioned(
              bottom: 40,
              left: 48,
              right: 48,
              child: Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.42,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(240, 240, 240, 1),
                      image: DecorationImage(image: AssetImage('assets/images/wallPlant.png'))),
                ),
                Positioned(
                    bottom: 15,
                    left: 15,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 61,
                        height: 61,
                        color: Colors.black,
                        child: const Icon(
                          Icons.keyboard_arrow_right,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    )),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
