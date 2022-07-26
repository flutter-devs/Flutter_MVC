import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvcdemo/src/controller/main_controller.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  // Fields in a Widget subclass are always marked "final".

  final String title = 'MVC Demo';
  final String title1 = 'Push Buttons to increase and decrease value.';

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Controller _con = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text(
                widget.title1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () {
                    setState(_con.decrementCounter);
                  },
                  tooltip: 'Decrement',
                  child: Icon(Icons.remove),
                ),
                Text(
                  _con != null ? '${_con.counter}' : "hi",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(_con.incrementCounter);
                  },
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
