import 'package:flutter/material.dart';

class MyTask extends StatelessWidget {
  const MyTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                alignment: Alignment.center,
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Your Score'), Text('150 pt')],
                  ),
                ),
              ),
              Positioned(
                top: 400,
                left: 0,
                right: 0,
                child: Center(
                  child: Card(
                    color: Colors.white,
                    child: Container(
                      height: 150,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.circle, size: 15),
                                  Text('100%'),
                                ],
                              ),
                              Text('congratulation'),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Icon(Icons.circle, size: 15),
                                  Text('100%'),
                                ],
                              ),
                              Text('congratulation'),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.circle, size: 15),
                                  Text('100%'),
                                ],
                              ),
                              Text('congratulation'),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Icon(Icons.circle, size: 15),
                                  Text('100%'),
                                ],
                              ),
                              Text('congratulation'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 400,
            decoration: BoxDecoration(color: Colors.transparent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Column(
                      children: [
                        Icon(Icons.restart_alt, size: 40),
                        Text('Play Again'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.remove_red_eye_outlined, size: 40),
                        Text('Review Answer'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.share, size: 40),
                        Text('Share Score'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Column(
                      children: [
                        Icon(Icons.file_present_outlined, size: 40),
                        Text('Generate pdf'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_outlined, size: 40),
                        Text('home'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.leaderboard_outlined, size: 40),
                        Text('Leaderboard'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
