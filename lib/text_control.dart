import 'package:flutter/material.dart';

import './text.dart';


class StateTextControl extends StatefulWidget {
  final String textItem;

  StateTextControl(this.textItem);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextState();
  }

}

class _TextState extends State<StateTextControl>{
  List<String> _text = [];

  @override
  void initState() {
    _text.add(widget.textItem);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        RaisedButton(
          textColor: Colors.lightGreen,
          child: Text("Change Text"),
          onPressed: () {
            setState(() {
              //Update text
              _text.removeAt(0);
              _text.add("New Text");
            });
          },
        ),
        StatelessText(_text)
      ],
    );
  }

}