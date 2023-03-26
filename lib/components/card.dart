import 'package:flutter/material.dart';

import '../classes/event.dart';

class CardWidget extends StatefulWidget {
  CardWidget({
    super.key,
    required this.list,
    this.callback
  });

  final Event list;
  Function? callback;

  @override
  State<CardWidget> createState() => _CardWidgetState(callback: callback);
}

class _CardWidgetState extends State<CardWidget> {

  bool _isEnabled = true;
  Function? callback;

  _CardWidgetState({this.callback});

  @override void initState() {
    super.initState();
    print('init state');
  }

  @override
  Widget build(BuildContext context) {
    print('build state');
    return Card(
      color: Colors.yellow,
      shadowColor: Colors.black,
      elevation: 10,
      margin: EdgeInsets.symmetric(vertical: 7),
      child: ListTile(
        enabled: _isEnabled,
        title: Text(widget.list.name, style: TextStyle(fontSize: 20),),
        subtitle: Text("${widget.list.location} ${widget.list.startDateTime}"),
        iconColor: Colors.red[400],
        textColor: Colors.blue[900],
        leading: IconButton(
          icon: _isEnabled ? Icon(Icons.lock) : Icon((Icons.lock_open)),
          onPressed: () {
            setState(() {
              _isEnabled = !_isEnabled;
            });
          },
        ),
      onTap: () => callback!(),
      ),
    );
  }
}