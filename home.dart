import 'dart:async';

import 'package:flutter/material.dart';

bool bol = false;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bol == true ? Colors.grey[850] : Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(
                            4.0,
                            4.0,
                          ),
                          blurRadius: 15.0,
                          spreadRadius: 1.0),
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(
                            -4.0,
                            -4.0,
                          ),
                          blurRadius: 15.0,
                          spreadRadius: 1.0)
                    ]),
                child: Icon(
                  Icons.apple,
                  size: 80,
                )),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  color: Colors.black,
                  onPressed: () {
                    setState(() {
                      bol = true;
                    });
                  },
                  child: Text(
                    "Dark",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                MaterialButton(
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      bol = false;
                    });
                  },
                  child: Text(
                    "Light",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
