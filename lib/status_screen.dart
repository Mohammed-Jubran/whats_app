import 'package:flutter/material.dart';
import 'package:whats_app/ran_color.dart';
import 'package:whats_app/tab_screen.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TabScreen()),
          );
        },
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              color: RandomColorModel().getColor(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.heart_broken_outlined),
                  Text(
                    "حالات حزينة",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: RandomColorModel().getColor(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.emoji_emotions_outlined),
                  Text(
                    "حالات مضحكة",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: RandomColorModel().getColor(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.accessibility_new_rounded),
                  Text(
                    "حالات حب",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: RandomColorModel().getColor(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.heart_broken_outlined),
                  Text(
                    "حالات حزينة",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: RandomColorModel().getColor(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.heart_broken_outlined),
                  Text(
                    "حالات حزينة",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: RandomColorModel().getColor(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.heart_broken_outlined),
                  Text(
                    "حالات حزينة",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: RandomColorModel().getColor(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.heart_broken_outlined),
                  Text(
                    "حالات حزينة",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: RandomColorModel().getColor(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.heart_broken_outlined),
                  Text(
                    "حالات حزينة",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: RandomColorModel().getColor(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.heart_broken_outlined),
                  Text(
                    "حالات حزينة",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: RandomColorModel().getColor(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.heart_broken_outlined),
                  Text(
                    "حالات حزينة",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
