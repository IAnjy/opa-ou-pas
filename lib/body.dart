import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: const Text(
            'Opainaa',
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 14.0),
          ),
          onPressed: snack),
    );
  }

  // void pressed() {
  //   setState(() {
  //     print("On m'a appuyé dessus");
  //   });
  // }

  void snack() {
    SnackBar snackBar = const SnackBar(
        content:
            Text("Mahafinaritra ah ise ! opa kely avy any ambany aloha xD"));

    Scaffold.of(context).showSnackBar(snackBar);
  }
}
