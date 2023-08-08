import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatefulWidget {
  const WidgetDetail({super.key});

  @override
  State<WidgetDetail> createState() => WidgetDetailState();
}

class WidgetDetailState extends State<WidgetDetail> {
  int count = 0;
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Count: " + count.toString(),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count = count + 1;
                    if (count >= 0) {
                      visible = false;
                    }
                  });
                },
                child: const Text("+"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (count == 0) {
                      visible = true;
                    } else {
                      count = count - 1;
                      visible = false;
                    }
                  });
                },
                child: const Text("-"),
              ),
              Visibility(
                visible: visible,
                child: const Text("Count cannot less than 0"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
