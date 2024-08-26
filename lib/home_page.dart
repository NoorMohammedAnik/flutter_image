import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Example"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              "assets/images/flutter_logo.png",
              height: 100,
              width: 100,
            ),
            Text("This is a flutter logo from asset"),
            SizedBox(
              height: 10,
            ),
            Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Muhammad_Yunus_-_World_Economic_Forum_Annual_Meeting_2012.jpg/330px-Muhammad_Yunus_-_World_Economic_Forum_Annual_Meeting_2012.jpg",
              height: 200,
              width: 200,
            ),
            Text("This is a flutter logo from network"),
            FadeInImage.assetNetwork(
                placeholder: 'assets/images/flutter_logo.png',
                image:
                    'https://www.amarmp.com/propic/profile/101_1480570259.png',
                height: 300,
                width: 250),
            Text("This is a fade in image"),
          ],
        ),
      ),
    );
  }
}
