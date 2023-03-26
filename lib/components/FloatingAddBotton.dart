import 'package:flutter/material.dart';

class FloatingAddBotton extends StatelessWidget {

  Function? callback;

  FloatingAddBotton({
    this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        callback!();
      },
      child: const Text(
        '+',
        style: TextStyle(fontSize: 30, color: Colors.deepPurple),
      ),
    );
  }
}