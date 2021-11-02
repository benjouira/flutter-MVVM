import 'package:flutter/material.dart';
import 'package:myfirst_mvvm/view_model/home_view_model.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // instance from view model
  var dataHVM = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dataHVM.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${dataHVM.getCounter()}"),
            TextButton(
                onPressed: () {
                  // not write any business lohic here
                  // only send actions
                  setState(() {
                    dataHVM.inc();
                  });
                },
                child: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
