import 'package:flutter/material.dart';
import 'package:flutter_listview/list_page.dart';
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

  void onPressed() {
    print("Map button pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        children: [
          Container(
            height: 200,
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.format_list_numbered),
                  title: MaterialButton(
                    color: Colors.lightBlueAccent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const ListPage1(title: "List Page"),
                        ),
                      );
                    },
                    child: Text("Go to List Page"),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.photo_album),
                  title: Text("Album"),
                ),
                ListTile(leading: Icon(Icons.phone), title: Text("Phone")),
              ],
            ),
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(width: 160, color: Colors.red),
                Container(width: 160, color: Colors.blue),
                Container(width: 160, color: Colors.green),
                Container(width: 160, color: Colors.yellow),
                Container(width: 160, color: Colors.orange),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                100,
                (index) => Center(
                  child: Text(
                    'Item $index',
                    style: TextTheme.of(context).headlineSmall,
                  ),
                ),
              ),
            ),
          ),
        ],
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
