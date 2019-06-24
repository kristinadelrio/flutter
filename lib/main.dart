import 'package:flutter/material.dart';
import 'src/article.dart';
import 'src/hn_bloc.dart';
import 'dart:async';
import 'dart:collection';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  final hnBloc = HackerNewsBloc();
  runApp(MyApp(bloc: hnBloc));
}

class MyApp extends StatelessWidget {
  final HackerNewsBloc bloc;

  MyApp({
    Key key,
    this.bloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
        bloc: bloc,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final HackerNewsBloc bloc;

  MyHomePage({Key key, this.title, this.bloc}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _currentNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: LoadingInfo(widget.bloc.isLoading),
        title: Text(widget.title),
      ),
      body: StreamBuilder<UnmodifiableListView<Article>>(
        stream: widget.bloc.articles,
        initialData: UnmodifiableListView<Article>([]),
        builder: (context, snapshot) => ListView(children: snapshot.data.map(_buildItems).toList()),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentNavIndex,
        items: [
          BottomNavigationBarItem(title: Text('Top stories'), icon: Icon(Icons.arrow_drop_up)),
          BottomNavigationBarItem(title: Text('New stories'), icon: Icon(Icons.new_releases)),
        ],
        onTap: (index) {
          if (index == 0) {
            widget.bloc.storiesType.add(StoriesType.topStories);
          } else {
            widget.bloc.storiesType.add(StoriesType.newStories);
          }
          setState(() {
            _currentNavIndex = index;
          });
        },
      ),
    );
  }

  Widget _buildItems(Article article) {
    return Padding(
      key: Key('${article.id}'),
      padding: const EdgeInsets.all(16.0),
      child: new ExpansionTile(
        title: new Text(article.title, style: new TextStyle(fontSize: 24.0)),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              new Text(article.type),
              new IconButton(
                icon: new Icon(Icons.launch),
                color: Colors.green,
                onPressed: () async {
                  if (await canLaunch(article.url)) {
                    launch(article.url);
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class LoadingInfo extends StatefulWidget {

  Stream<bool> _isLoading;
  LoadingInfo(this._isLoading);

  createState() => LoadingInfoState();

}

class LoadingInfoState extends State<LoadingInfo> with TickerProviderStateMixin {

  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 1)
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: widget._isLoading,
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        //if (snapshot.hasData && snapshot.data) {
          _controller.forward().then((_) {
            _controller.reverse();
          });
          return FadeTransition(
            child: Icon(FontAwesomeIcons.hackerNewsSquare),
            opacity: Tween(begin: 0.5, end: 1.0).animate(
                CurvedAnimation(curve: Curves.easeIn, parent: _controller)),
          );
       //}

        //_controller.reverse();
        //return Container();
      },
    );
  }
}