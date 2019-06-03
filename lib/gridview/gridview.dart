import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  List<Card> getCards() {
    Card setCard(String picName, String picPath) {
      return new Card(
        elevation: 1.5,
        child: new Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            new Image(image: new AssetImage(picPath)),
            new Center(
              child: new Text(picName),
            )
          ],
        ),
      );
    }

    List<Card> cards = new List();
    cards.add(setCard('Facebook', 'data_repo/img/social/facebook.png'));
    cards.add(setCard('Twitter', 'data_repo/img/social/twitter.png'));
    cards.add(setCard('Instagram', 'data_repo/img/social/instagram.png'));
    cards.add(setCard('Linkedin', 'data_repo/img/social/linkedin.png'));
    cards.add(setCard('Gooogle Plus', 'data_repo/img/social/google_plus.png'));
    cards.add(setCard('Launcher Icon', 'data_repo/img/ic_launcher.png'));
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GridView.count(
      crossAxisCount: 2,
      primary: true,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      padding: const EdgeInsets.all(1.0),
      childAspectRatio: 0.85,
      children: getCards(),
    );
  }
}
