import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:goom';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  String turn = 'X'; // Tracks whose turn it is
  List<String> gridState = List.filled(9, ''); // Holds the state of the grid

  late AnimationController controller;

  late Animation<double> animation;
  Color colorX = Colors.transparent;
  Color colorY = Colors.transparent;

  var isPlay = false;
  var showPlay = false;

  var winner = '';
  var showFinal = false;
  List<String> player = ['X', 'Y'];

  // get radiusY => null;
  // var isDraw = false;

  void checkWin() {
    if (gridState[0] == 'X' && gridState[1] == 'X' && gridState[2] == 'X') {
      setState(() {
        winner = 'Player X';
        showFinal = true;
        isPlay = false;
      });
    }
    if (gridState[3] == 'X' && gridState[4] == 'X' && gridState[5] == 'X') {
      setState(() {
        winner = 'Player X';
        showFinal = true;
        isPlay = false;
      });
    }
    if (gridState[6] == 'X' && gridState[7] == 'X' && gridState[8] == 'X') {
      setState(() {
        winner = 'Player X';
        showFinal = true;
        isPlay = false;
      });
    }
    if (gridState[0] == 'X' && gridState[3] == 'X' && gridState[6] == 'X') {
      setState(() {
        winner = 'Player X';
        showFinal = true;
        isPlay = false;
      });
    }
    if (gridState[1] == 'X' && gridState[4] == 'X' && gridState[7] == 'X') {
      setState(() {
        winner = 'Player X';
        showFinal = true;
        isPlay = false;
      });
    }
    if (gridState[2] == 'X' && gridState[5] == 'X' && gridState[8] == 'X') {
      setState(() {
        winner = 'Player X';
        showFinal = true;
        isPlay = false;
      });
    }
    if (gridState[0] == 'X' && gridState[4] == 'X' && gridState[8] == 'X') {
      setState(() {
        winner = 'Player X';
        showFinal = true;
        isPlay = false;
      });
    }
    if (gridState[2] == 'X' && gridState[4] == 'X' && gridState[6] == 'X') {
      setState(() {
        winner = 'Player X';
        showFinal = true;
        isPlay = false;
      });
    }

    if (gridState[0] == 'Y' && gridState[1] == 'Y' && gridState[2] == 'Y') {
      setState(() {
        winner = 'Player Y';
        showFinal = true;
        isPlay = false;
      });
    }
    if (gridState[3] == 'Y' && gridState[4] == 'Y' && gridState[5] == 'Y') {
      setState(() {
        winner = 'Player Y';
        showFinal = true;
        isPlay = false;
      });
    }
    if (gridState[6] == 'Y' && gridState[7] == 'Y' && gridState[8] == 'Y') {
      setState(() {
        winner = 'Player Y';
        showFinal = true;
        isPlay = false;
      });
    }
    if (gridState[0] == 'Y' && gridState[3] == 'Y' && gridState[6] == 'Y') {
      setState(() {
        winner = 'Player Y';
        showFinal = true;
        isPlay = false;
      });
    }
    if (gridState[1] == 'Y' && gridState[4] == 'Y' && gridState[7] == 'Y') {
      setState(() {
        winner = 'Player Y';
        showFinal = true;
        isPlay = false;
      });
    }
    if (gridState[2] == 'Y' && gridState[5] == 'Y' && gridState[8] == 'Y') {
      setState(() {
        winner = 'Player Y';
        showFinal = true;
        isPlay = false;
      });
    }
    if (gridState[0] == 'Y' && gridState[4] == 'Y' && gridState[8] == 'Y') {
      setState(() {
        winner = 'Player Y';
        showFinal = true;
        isPlay = false;
      });
    }
    if (gridState[2] == 'Y' && gridState[4] == 'Y' && gridState[6] == 'Y') {
      setState(() {
        winner = 'Player Y';
        showFinal = true;
        isPlay = false;
      });
    }

    if (!gridState.contains('') && winner == '') {
      setState(() {
        winner = 'draw';
        showFinal = true;
        isPlay = false;
      });
    }
  }

  @override
  void initState() {
    showPlay = true;
    // radiusX = 20.0;
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 30));

    animation = Tween<double>(begin: 1.0, end: 0.0).animate(controller);
    controller.addListener(() {
      if (animation.isCompleted && winner == '') {
        setState(() {
          isPlay = false; // Stop the game
          showFinal = true; // Show the final result
          winner = 'draw'; // Indicate the game is a draw
        });
      }
    });

    super.initState();
  }

  void onTapped(int index) {
    if (isPlay) {
      if (gridState[index] == '') {
        if (turn == 'X') {
          setState(
            () {
              colorX = Colors.white;
              colorY = Colors.transparent;
              gridState[index] = turn; // Update the cell with the current turn
              checkWin();
              turn = 'Y'; // Switch turns
            },
          );
        } else {
          setState(() {
            colorY = Colors.white;
            colorX = Colors.transparent;
            gridState[index] = turn;
            checkWin();
            turn = 'X';
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // Widget showTimerWinner = Column(
    //   children: [
    //     CircularProgressIndicator(
    //       value: animation.value,
    //     ),
    //     ElevatedButton(onPressed: () {}, child: const Text("Restart"))
    //   ],
    // );

    Widget showTimerWinner = const Column();

    if (winner == 'Player X') {
      showTimerWinner = Column(
        children: [
          const Text("Player X wins"),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  isPlay = true;
                  controller.reset();
                  controller.forward();

                  winner = '';
                  showFinal = false;
                  gridState = List.filled(9, '');
                  int index = Random().nextInt(1) + 0;
                  turn = player[index];
                  if (turn == 'X') {
                    colorX = Colors.white;
                  } else {
                    colorY = Colors.white;
                  }
                });
              },
              child: const Text("Restart"))
        ],
      );
    } else if (winner == 'Player Y') {
      showTimerWinner = Column(
        children: [
          const Text("Palyer Y Wins"),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  isPlay = true;
                  controller.reset();
                  controller.forward();
                  showFinal = false;

                  gridState = List.filled(9, '');
                  winner = '';
                  int index = Random().nextInt(1) + 0;
                  turn = player[index];
                  if (turn == 'X') {
                    colorX = Colors.white;
                  } else {
                    colorY = Colors.white;
                  }
                });
              },
              child: const Text("Restart"))
        ],
      );
    } else {
      if (winner == 'draw') {
        showTimerWinner = Column(
          children: [
            const Text("draw"),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    isPlay = true;
                    controller.reset();
                    controller.forward();
                    showFinal = false;

                    gridState = List.filled(9, '');
                    winner = '';
                    int index = Random().nextInt(1) + 0;
                    turn = player[index];
                    if (turn == 'X') {
                      colorX = Colors.white;
                    } else {
                      colorY = Colors.white;
                    }
                  });
                },
                child: const Text("Restart"))
          ],
        );
      }
    }

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
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(width: 3, color: colorX),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          color: const Color.fromARGB(100, 255, 255, 255),
                        ),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.boy,
                              size: 50,
                            ),
                            Text(
                              "X",
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(width: 3, color: colorY),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          color: const Color.fromARGB(100, 255, 255, 255),
                        ),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.boy,
                              size: 50,
                            ),
                            Text(
                              "O",
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Color.fromARGB(100, 255, 255, 255),
                ),
                child: GridView.builder(
                  // physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => onTapped(index),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Color.fromARGB(255, 255, 249, 248),
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
                        alignment: Alignment.center,
                        child: Text(
                          gridState[index],
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 50),

              !showFinal
                  ? AnimatedSwitcher(
                      duration: const Duration(milliseconds: 200),
                      transitionBuilder: (child, animation) {
                        return RotationTransition(
                            turns:
                                Tween(begin: 0.5, end: 1.0).animate(animation),
                            child: child);
                      },
                      child: showPlay
                          ? ElevatedButton(
                              key: const ValueKey('button'),
                              onPressed: () {
                                setState(() {
                                  showPlay = false;
                                  isPlay = true;
                                  controller.forward();
                                  int index = Random().nextInt(2);
                                  turn = player[index];
                                  if (turn == 'X') {
                                    colorX = Colors.white;
                                  } else {
                                    colorY = Colors.white;
                                  }
                                });
                              },
                              child: const Text("play"),
                            )
                          : Stack(alignment: Alignment.center, children: [
                              AnimatedBuilder(
                                animation: animation,
                                builder: (context, child) {
                                  return CircularProgressIndicator(
                                    color: Colors.white,
                                    value: animation.value.toDouble(),
                                    key: const ValueKey('loading'),
                                  );
                                },
                                // child:
                              ),
                              Text(
                                (controller.duration!.inSeconds *
                                        animation.value)
                                    .ceil()
                                    .toString(),
                                style: const TextStyle(color: Colors.white),
                              ),
                            ]))
                  : showTimerWinner

              // showTimerWinner
            ],
          ),
        ),
      ),
    );
  }
}
