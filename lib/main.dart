import 'package:flutter/material.dart';

void main() {
  runApp(const Test());
}

// class WidgetDetail extends StatelessWidget {
//   const WidgetDetail({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Todo Appss"),
//           centerTitle: true, // Başlığı ortaladı
//           backgroundColor: Colors.amber,
//           leading: const Text("LOGO"),
//         ),
//         body: const Center(
//           child: Text("hiddf"),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: const Text("+"),
//           onPressed: () {},
//         ),
//       ),
//     );
//   }
// }

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  String value = "";
  List<String> myList = [];

  var todos = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (text) {
                  value = text;
                  print(text);
                },
                decoration: const InputDecoration(
                  hintText: 'Enter a search term',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    myList.add(value);
                    value = "";
                    print("state arttırıldı");
                  });
                },
                child: const Text("Ekle"),
              ),
              for (var fruit in myList)
                Text(
                  fruit,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
