import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoe/screen/home.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  void nextScreen() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const HomeScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 68, 12, 96),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: kToolbarHeight * 1.3),
          child: Column(children: [
            Text(
              "Tic Tac Toe",
              style: GoogleFonts.baloo2(
                shadows: [
                  const Shadow(
                      color: Color.fromARGB(255, 255, 255, 255),
                      blurRadius: 2,
                      offset: Offset(1, 1)),
                  const Shadow(
                      color: Color.fromARGB(255, 255, 255, 255),
                      blurRadius: 2,
                      offset: Offset(-1, -1)),
                ],
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              height: 300,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromARGB(100, 255, 255, 255),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.yellow,
                //     spreadRadius: 3,
                //     blurRadius: 10,
                //     offset: Offset(2, 2),
                //   ),
                //   BoxShadow(
                //     color: Colors.yellowAccent,
                //     spreadRadius: 3,
                //     blurRadius: 10,
                //     offset: Offset(-2, -2),
                //   ),
                // ],
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        for (int i = 0; i < 3; i++)
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: 80,
                                // width: 20,
                                // width: double.infinity,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(50, 255, 255, 255),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: Offset(2, 2),
                                    ),
                                    BoxShadow(
                                      color: Color.fromARGB(99, 8, 3, 3),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: Offset(-2, -2),
                                    ),
                                  ],
                                ),
                                alignment: Alignment.topCenter,
                                child: Text(
                                  i.toString(),
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        for (int i = 0; i < 3; i++)
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: 80,
                                // width: 20,
                                // width: double.infinity,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    color: Color.fromARGB(255, 255, 249, 248),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color.fromARGB(50, 255, 255, 255),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(2, 2),
                                      ),
                                      BoxShadow(
                                        color: Color.fromARGB(99, 8, 3, 3),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(-2, -2),
                                      ),
                                    ]),
                                alignment: Alignment.topCenter,
                                child: Text(
                                  i.toString(),
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        for (int i = 0; i < 3; i++)
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: 80,
                                // width: 20,
                                // width: double.infinity,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    color: Color.fromARGB(255, 255, 249, 248),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color.fromARGB(50, 255, 255, 255),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(2, 2),
                                      ),
                                      BoxShadow(
                                        color: Color.fromARGB(99, 8, 3, 3),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(-2, -2),
                                      ),
                                    ]),
                                alignment: Alignment.topCenter,
                                child: Text(
                                  i.toString(),
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: nextScreen,
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 50)),
              child: const Text("Start"),
            )
          ]),
        ),
      ),
    );
  }
}
