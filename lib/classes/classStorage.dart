import 'package:flutter/material.dart';
import 'package:flutter_add/classes/event.dart';

class ListViewSeparatedExample extends StatelessWidget {
  final List<Event> list = [
    Event(name: "name1", location: "location1", startDateTime: DateTime.now()),
    Event(name: "name2", location: "location2", startDateTime: DateTime.now()),
    Event(name: "name3", location: "location3", startDateTime: DateTime.now()),
    Event(name: "name4", location: "location4", startDateTime: DateTime.now()),
    Event(name: "name5", location: "location5", startDateTime: DateTime.now()),
    Event(name: "name6", location: "location6", startDateTime: DateTime.now()),
    Event(name: "name7", location: "location7", startDateTime: DateTime.now()),
    Event(name: "name8", location: "location8", startDateTime: DateTime.now()),
    Event(name: "name9", location: "location9", startDateTime: DateTime.now()),
    Event(
        name: "name10", location: "location10", startDateTime: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Experiment2'),
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: list.length,
          padding: EdgeInsets.all(20),
          itemBuilder: (_, index) => Card(
            color: Colors.yellow,
            shadowColor: Colors.black,
            elevation: 10,
            margin: EdgeInsets.symmetric(vertical: 7),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
                children: [
                  Text(
                    "${list[index].name}",
                    style: TextStyle(fontSize: 40),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${list[index].location}",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "${list[index].startDateTime}",
                          style: TextStyle(fontSize: 15),
                        ),]
                  ),]
            ),
          ),
        ),
      ),
    );
  }
}

class ListViewBuilderExample extends StatelessWidget {
  final List<String> list = [
    "title1",
    "title2",
    "title3",
    "title4",
    "title5",
    "title6",
    "title7",
    "title8",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Experiment2'),
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (_, index) => Text(
            list[index],
            style: TextStyle(fontSize: 100),
          ),
        ),
      ),
    );
  }
}

class ListViewExample extends StatelessWidget {
  final List<String> list = [
    "title1",
    "title2",
    "title3",
    "title4",
    "title5",
    "title6",
    "title7",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Experiment2'),
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: list
              .map((e) => Text(
            e,
            style: TextStyle(fontSize: 100),
          ))
              .toList(),
        ),
      ),
    );
  }
}

class RowSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Experiment2'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.green,
              child: Text('1'),
            ),
            Container(
              color: Colors.red,
              child: Text('2'),
            ),
            Expanded(
              //заполняет свободное пространство по главной оси
              child: Container(
                color: Colors.blue,
                child: Text('3'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ColumnSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Experiment2'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.green,
              child: Text('1'),
            ),
            Container(
              color: Colors.red,
              child: Text('2'),
            ),
            Container(
              color: Colors.blue,
              child: Text('3'),
            )
          ],
        ),
      ),
    );
  }
}

class ContainerSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Experiment2'),
        ),
        body: Container(
          child: Container(
            //color: Colors.yellow,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: 10,
                  color: Colors.red,
                ),
                image: DecorationImage(
                    image: AssetImage('assets/images/tiger.jpg'),
                    fit: BoxFit.fill)),
            child: Icon(
              Icons.access_alarm_outlined,
              color: Colors.deepOrange,
              size: 100,
            ),
          ),
        ),
      ),
    );
  }
}

class PaddingTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Experiment2'),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
          child: Icon(
            Icons.ice_skating,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

class AllignTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Experiment2'),
        ),
        body: Align(
          child: Icon(
            Icons.access_alarm,
            size: 50,
            color: Colors.red,
          ),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}