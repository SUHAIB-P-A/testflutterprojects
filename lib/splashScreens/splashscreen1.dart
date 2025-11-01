import 'package:flutter/material.dart';
import 'package:testdemoflutterapps/splashScreens/widgets/samplescreen.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  bool _isDotCenter = false;
  bool _isDotScale = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Center(
              child: AnimatedScale(
                duration: const Duration(milliseconds: 600),
                scale: _isDotScale ? 10 : 1,
                curve: Cubic(0.58, -0.3, 0.32, 1),
                child: CircleAvatar(
                  radius: 48,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: _isDotScale
                        ? null
                        : CircleAvatar(backgroundColor: Colors.red, radius: 12),
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 700),
              curve: Cubic(0.18, 1.0, 0.04, 1.0),
              left:
                  (MediaQuery.sizeOf(context).width / 2) -
                  12 -
                  (_isDotCenter ? 0 : 80),
              child: CircleAvatar(radius: 12, backgroundColor: Colors.white),
            ),
            Positioned(
              bottom: 40,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isDotCenter = !_isDotCenter;
                  });
                  Future.delayed(Duration(milliseconds: 520), () {
                    setState(() {
                      _isDotScale = !_isDotScale;
                    });

                    Future.delayed(Duration(milliseconds: 600), () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return Samplescreen();
                          },
                        ),
                      );
                    });
                  });
                },
                child: Text("Set Center"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
