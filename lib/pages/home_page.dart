import 'package:flutter/material.dart';
import 'package:flutter_kotlin_samples/repository/platform_repository.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _repository = PlatformRepository();
  String colorResult = "0xFFCA2C92";

  changeColor(String color) async {
    colorResult = await _repository.changeColor(color);
    return colorResult;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(int.parse(colorResult)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/center.png',
            ),
            const Divider(
              color: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                //  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      changeColor("0xFF2196F3");
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      FlutterLogo(
                        size: 30,
                      ),
                      Text(
                        "Flutter",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                 // color: Colors.green,
                  onPressed: () {
                    setState(() {
                      // Here we are going to set the orange color
                      changeColor("0xFFE65100");
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'images/kotlin_logo.png',
                        height: 30,
                      ),
                      const Text(
                        "Kotlin",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}