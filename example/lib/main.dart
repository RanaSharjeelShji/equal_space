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
        appBar: AppBar(title: const Text('Equal Space Example')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Equal Space Between Each Widget in Row",
                  style: TextStyle(fontSize: 18),
                ),
                SpacedRow(
                  space: 16.0,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 179, 179, 179)),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "1",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 179, 179, 179)),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "2",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 179, 179, 179)),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "3",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const Text(
                  "Equal Space Between Each Widget in Column",
                  style: TextStyle(fontSize: 18),
                ),
                SpacedColumn(
                  space: 30.0,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 179, 179, 179)),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "1",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 179, 179, 179)),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "2",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 179, 179, 179)),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "3",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
