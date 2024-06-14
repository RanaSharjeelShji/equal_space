import 'package:flutter/material.dart';
import 'package:equal_space/equal_space.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Spaced Widgets Example')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SpacedColumn(
            space: 0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('SpacedRow Example:', style: TextStyle(fontSize: 18)),
              SpacedRow(
                space: 26.0,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                textDirection: TextDirection.rtl,
                verticalDirection: VerticalDirection.down,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Container(width: 50, height: 50, color: Colors.red),
                  Container(width: 50, height: 50, color: Colors.green),
                  Container(width: 50, height: 50, color: Colors.blue),
                ],
              ),
             
              const SizedBox(height: 40),
              const Text('SpacedColumn Example:',
                  style: TextStyle(fontSize: 18)),
              SpacedColumn(
                space: 16.0,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                textDirection: TextDirection.ltr,
                verticalDirection: VerticalDirection.up,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Container(width: 50, height: 50, color: Colors.orange),
                  Container(width: 50, height: 50, color: Colors.purple),
                  Container(width: 50, height: 50, color: Colors.yellow),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
