import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class WidgetPage extends StatelessWidget {
  void function() {
    print('hello world');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair = WordPair.random();
    return MaterialApp(
//      title: 'welcome to the flutter',
//      home : Scaffold(
//        appBar: AppBar(
//          title: Text('welcome to the flutter'),
//        ),
//        body: Center(
////          child: Text('hello world'),
////          child: Text(wordPair.asCamelCase),
//          child: RandomWords(), //自定义组件
//        ),
//      ),
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final suggestions = <WordPair>[];
  final textStyle = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
//    // TODO: implement build
//    var wordPair = WordPair.random();
//    return Text(wordPair.asPascalCase);

    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: buildSuggestions(),
    );
  }

  Widget buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) {
            return Divider();
          }

          final index = i ~/ 2;
          if (index >= suggestions.length) {
            suggestions.addAll(generateWordPairs().take(10));
          }
          return buildRow(suggestions[index]);
        });
  }

  Widget buildRow(WordPair wordPair) {
    return ListTile(
      title: Text(
        wordPair.asPascalCase,
        style: textStyle,
      ),
    );
  }
}
