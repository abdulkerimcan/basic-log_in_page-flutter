import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenWidth = screenInfo.size.width;
    final double screenHeight = screenInfo.size.height;
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: screenHeight / 20),
                  child: SizedBox(
                      width: screenWidth / 4,
                      height: screenHeight / 6,
                      child: Image.asset(
                        "images/logo.png",
                        color: Colors.white,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(screenHeight / 30),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(screenHeight / 30),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(screenHeight / 30),
                  child: SizedBox(
                    width: screenWidth / 1.2,
                    height: screenHeight / 12,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.pink, onPrimary: Colors.white),
                      onPressed: () {
                        print("logged in.");
                      },
                      child: Text("Log in"),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("help page");
                  },
                  child: Text(
                    "Any Help?",
                    style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth / 27,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
