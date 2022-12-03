import 'package:custom_widget/widget/rounded_btn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              child: RoundedBtn(
                btnName: 'Play',
                icon: const Icon(Icons.play_circle),
                callback: (){
                  print('Just Play');
                },
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 150,
              child: RoundedBtn(
                btnName: 'Kick',
                callback: (){
                  print('Just Play');
                },
                textStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                bgColor: Colors.grey,
              ),
            ),
          ],
        ),
      )
    );
  }
}
