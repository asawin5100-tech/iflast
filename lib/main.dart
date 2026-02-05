import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentPage(),
    );
  }
}

class StudentPage extends StatelessWidget {
  const StudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ธนภัทร เปี้ยปลูก'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'ชื่อ: ธนภัทร เปี้ยปลูก',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'เลขที่: 1',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Icon(
              Icons.warning,
              color: Colors.red,
              size: 40,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'next',
            child: const Icon(Icons.navigate_next),
            onPressed: () {},
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'exit',
            backgroundColor: Colors.red,
            child: const Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
