import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatelessWidget {
  const WidgetDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("First Flutter App"),
          centerTitle: true, // Başlığı ortaladı
          backgroundColor: Colors.amber,
          leading: const Text("LOGO"),
        ),
        body: const Center(
          child: Text("Hello"),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Text("+"),
          onPressed: () {},
        ),
      ),
    );
  }
}
