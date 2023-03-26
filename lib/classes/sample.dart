import 'package:flutter/material.dart';

class ClassSample extends StatelessWidget {
  const ClassSample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment2',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Experiment2'),
        ),
        body: const Align(),
      ),
    );
  }
}