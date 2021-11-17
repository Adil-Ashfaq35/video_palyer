import 'package:flutter/material.dart';
import 'package:videoplayer/view/home_page.dart';
import 'package:videoplayer/view/video_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: VideoInfo(),
    );
  }
}


