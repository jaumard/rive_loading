import 'package:flutter/material.dart';
import 'package:rive_loading/rive_loading.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RiveLoading(
            name: 'loading.riv',
            loopAnimation: 'snowman',
            startAnimation: 'snowman',
            //endAnimation: 'snowman',
            width: 200,
            height: 200,
            fit: BoxFit.fill,
            until: () => Future.delayed(Duration(seconds: 5)),
            onSuccess: (_) {
              print('Finished');
            },
            onError: (err, stack) {
              print('error: $err');
            },
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RiveLoading(
                    name: 'loading.riv',
                    loopAnimation: 'snowman',
                    endAnimation: 'Complete',
                    isLoading: _isLoading,
                    onSuccess: (_) {
                      print('Finished');
                    },
                    onError: (err, stack) {
                      print(err);
                    },
                  ),
                ),
                ElevatedButton(
                  child: Text('Toogle loading'),
                  onPressed: () => setState(
                    () {
                      _isLoading = !_isLoading;
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
