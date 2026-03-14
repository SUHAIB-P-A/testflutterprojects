import 'package:flutter/material.dart';

class AminatediconExample extends StatefulWidget {
  const AminatediconExample({super.key});

  @override
  State<AminatediconExample> createState() => _AminatediconExampleState();
}

class _AminatediconExampleState extends State<AminatediconExample>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    //..forward()
    //..repeat(reverse: true); // auto start aimation
    animation = Tween<double>(begin: 0.0, end: 0.1).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            controller.isCompleted
                ? controller.reverse()
                : controller.forward();
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.list_view,
            progress: animation,
            size: 50,
          ),
        ),
      ),
    );
  }
}
