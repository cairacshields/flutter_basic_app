import 'package:flutter/material.dart';

class StatelessText extends StatelessWidget {
  final List<String> originalText;

  StatelessText(this.originalText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(

      child: Text(
        originalText.elementAt(0),
        textDirection: TextDirection.ltr,
      ),
    );
  }
}