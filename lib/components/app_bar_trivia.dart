import 'package:flutter/material.dart';

class AppBarTrivia extends StatefulWidget implements PreferredSizeWidget {
  AppBarTrivia({Key key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _AppBarTriviaState createState() => _AppBarTriviaState();
}

class _AppBarTriviaState extends State<AppBarTrivia> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xff374952),
      title: Image(
        image: AssetImage('lib/assets/icone.png'),
      ),
      centerTitle: true,
    );
  }
}
