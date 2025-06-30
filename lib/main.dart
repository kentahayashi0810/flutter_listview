import 'package:flutter/material.dart';
import 'package:flutter_listview/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const String title = 'Flutter Demo';
    return MaterialApp(
      title: title,
      home: MainPage(title: title),
    );
  }
}

class MainPage extends StatelessWidget {
  final String title;
  const MainPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text(
            'Hello World',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NextPage()),
          );
        },
        child: const Icon(Icons.arrow_circle_right),
      ),
    );
  }
}
