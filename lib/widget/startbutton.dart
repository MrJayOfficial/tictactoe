import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 30,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 0, 0, 0),
              spreadRadius: 3,
              blurRadius: 2,
              offset: Offset(1, 1),
            ),
            BoxShadow(
              color: Color.fromARGB(255, 18, 249, 26),
              spreadRadius: 3,
              blurRadius: 2,
              offset: Offset(-1, -1),
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: const Center(child: Text("Start")),
    );
  }
}
