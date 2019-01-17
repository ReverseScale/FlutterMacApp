import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_todo/data_provider.dart';
import 'package:flutter_todo/model.dart';
import 'package:flutter_todo/projects_screen.dart';
import 'package:redux/redux.dart';
import 'package:flutter/foundation.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.iOS;

  final store = Store<CategoryState>(stateReducer,
      initialState: CategoryState([
        CategoryM(0, Icons.person, Colors.blue, "Personal", [
          Task(0, "Task", false),
        ]),
        CategoryM(1, Icons.content_paste, Colors.orange, "Work", []),
      ]));
  runApp(FlutterReduxApp(store: store));
}

class FlutterReduxApp extends StatelessWidget {
  final Store<CategoryState> store;
  const FlutterReduxApp({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<CategoryState>(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: TextTheme(
              body1: TextStyle(color: Colors.white, fontSize: 28.0),
              body2: TextStyle(color: Colors.white54, fontSize: 14.0),
              display1: TextStyle(color: Colors.black87, fontSize: 36.0),
              caption: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
              subhead: TextStyle(color: Colors.black54, fontSize: 12.0),
            )),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
      store: store,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoreConnector<CategoryState, Color>(
          converter: (store) => store.state.categories[0].color,
          builder: (context, color) => ProjectsScreen(
                backgroundColor: color,
              )),
    );
  }
}
