import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Players extends StatelessWidget {
  const Players({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 130,
      decoration: BoxDecoration(
          boxShadow: const [
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
          ],
          // border: OutlineInputBorder(),
          color: const Color.fromARGB(
            237,
            0,
            0,
            0,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          const Icon(
            size: 50,
            shadows: [Shadow(color: Colors.black26, blurRadius: 3)],
            weight: 100,
            Icons.man,
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Text(
              "Player X",
              style: GoogleFonts.baloo2(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
