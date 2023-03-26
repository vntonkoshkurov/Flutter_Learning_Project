import 'package:flutter/material.dart';
import '../classes/event.dart';
import '../components/FloatingAddBotton.dart';
import '../components/card.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Event> list = [];
  bool _isInit = false;
  Function? addItem;

  _HomeScreenState() {
    this.addItem = () {
      list.add(Event(
          name: "Name${list.length}",
          location: "location${list.length}",
          startDateTime: DateTime.now())
      );
      setState(() {});
    };
  }


  void ListInit () {
    for (int i = 0; i < 10; i++) {
      list.add(Event(name: "Name$i", location: "location$i", startDateTime: DateTime.now()));
    }
    _isInit = !_isInit;
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInit) ListInit();
    if (!_isInit) print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text('List of locations'),
      ),
      floatingActionButton: FloatingAddBotton(callback: addItem),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: list.length,
        padding: EdgeInsets.all(20),
        itemBuilder: (_, index) => CardWidget(list: list[index], callback: addItem,),
      ),
    );

  }
}

