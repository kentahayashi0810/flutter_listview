import 'package:flutter/material.dart';

class ListPage1 extends StatelessWidget {
  final String title;

  const ListPage1({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    const numberOfItems = 10;

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: LayoutBuilder(
        builder: (context, constraint) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraint.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    children: List.generate(
                      numberOfItems,
                      (index) => ItemWidget(text: 'Item $index'),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(height: 100, child: Center(child: Text(text))),
    );
  }
}
