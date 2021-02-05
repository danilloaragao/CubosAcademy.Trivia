import 'package:flutter/material.dart';

class CommomButton extends StatelessWidget {
  const CommomButton(
      {@required this.onPressed,
      @required this.caption,
      @required this.enabled});
  final GestureTapCallback onPressed;
  final String caption;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      textColor: Color(0xffF7F7F7),
      color: this.enabled
          ? Color(0xffDA0175)
          : Color(0xffDA0175).withOpacity(0.35),
      onPressed: this.enabled ? this.onPressed : () {},
      child: Text(
        this.caption,
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}
