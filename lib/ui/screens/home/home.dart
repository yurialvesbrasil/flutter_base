import 'package:flutter/material.dart';
import 'package:flutter_base/ui/values/styles.dart';
import '../../values/strings.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.arrow_back_ios),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 32.0, top: 8.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: APP_NAME, style: AppTheme.display1),
                      TextSpan(text: "\n"),
                      TextSpan(text: APP_VERSION, style: AppTheme.display2),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Container()
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Pressed',
        child: Icon(Icons.add),
      ),
    );
  }
}
