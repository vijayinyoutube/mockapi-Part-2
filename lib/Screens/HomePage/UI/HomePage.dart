import 'package:mockapi/Screens/HomePage/Widgets/General.dart';
import 'package:mockapi/Repository/API/API.dart';
import 'package:mockapi/Models/DemoModel.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<DemoModel> futureModel;
  String data = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: buildScreen(context),
    );
  }

  Widget buildScreen(BuildContext context) => Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildBtn(),
            buildHeightSpacer(25.00),
            buildFutureTextData(context),
          ],
        ),
      );

  buildFutureTextData(BuildContext context) => FutureBuilder<DemoModel>(
        future: futureModel,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return buildTextData(snapshot.data.name, snapshot.data.tech);
          } else if (snapshot.hasError) {
            return buildErrorData("Error");
          }
          return CircularProgressIndicator();
        },
      );

  Widget buildBtn() => ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5.0,
        ),
        child: Text("Store & Get Data"),
        onPressed: () => setState(
          () {
            futureModel = addData("Alice", "Flutter");
          },
        ),
      );
}
