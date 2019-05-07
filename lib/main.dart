import 'package:flutter/material.dart';
import 'src/article.dart';
import 'src/hn_bloc.dart';
import 'dart:collection';
import 'package:url_launcher/url_launcher.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page', bloc: bloc,),
    );
  }
}

class MyHomePage extends StatefulWidget {

  final HackerNewsBloc bloc;

  MyHomePage({ Key key, this.title, this.bloc }) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamBuilder<UnmodifiableListView<Article>>(
        stream: widget.bloc.articles,
        initialData: UnmodifiableListView<Article>([]),
        builder: (context, snapshot) => ListView(
          children: snapshot.data.map(_buildItems).toList(),
        ),
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
