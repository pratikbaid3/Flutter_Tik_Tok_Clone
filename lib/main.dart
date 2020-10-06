import 'package:flutter/material.dart';

const NESTED_JSON =
    '[{"url": "https://www.pinkvilla.com/feed/video-test/1GzPt1E-wXaMF_rAmm_E18XdTqqwVocde.mp4","comment-count": 121,"like-count": 834,"share-count": 22,"title": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy","user": {"name": "Calvin Klein","headshot": "https://pbs.twimg.com/profile_images/458869460888072192/Tul0RxVp_normal.jpeg"}},{"url": "https://www.pinkvilla.com/feed/video-test/1GzPt1E-wXaMF_rAmm_E18XdTqqwVocde.mp4","comment-count": 121,"like-count": 834,"share-count": 22,"title": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy","user": {"name": "Calvin Klein","headshot": "https://pbs.twimg.com/profile_images/458869460888072192/Tul0RxVp_normal.jpeg"}}]';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
