import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 20, crossAxisCount: 3, childAspectRatio: 1.5),
          itemCount: 9,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadius.circular(150),
                      color: Color.fromARGB(255, 255, 249, 248),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0),
                          spreadRadius: 5,
                          blurRadius: 2,
                          offset: Offset(2, 2),
                        ),
                        BoxShadow(
                          color: Color.fromARGB(255, 18, 249, 26),
                          spreadRadius: 5,
                          blurRadius: 2,
                          offset: Offset(-2, -2),
                        )
                      ]),
                  width: 100,
                  height: 100,
                  child: Text(index.toString())
                  // color: const Color.fromARGB(255, 200, 11, 11),
                  ),
            );
          }),
    );
  }
}
