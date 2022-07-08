import 'package:flutter/material.dart';
import 'custom_text.dart';

class PageSoa extends StatefulWidget {
  @override
  _PageSoaState createState() => _PageSoaState();
}

class _PageSoaState extends State<PageSoa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: CustomText(
          "Mirary soa ry ise a",
          factor: null,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              margin: const EdgeInsets.only(top: 20.0),
              elevation: 10.0,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.8,
                width: MediaQuery.of(context).size.width * 0.8,
                // child: AssetImage("applo/assetisa/vrai.jpg"),
                child: Image.asset(
                  "assets/holy.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 10.0,
            ),
            // ignore: prefer_const_literals_to_create_immutables
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Icon(Icons.clean_hands),
              const Text(
                "Be proud of YOU.. ",
                textScaleFactor: 1.0,
              ),
            ]),
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: RaisedButton(
                  color: Colors.teal,
                  onPressed: () {
                    firariantsoa();
                  },
                  child: CustomText("Firariantsoa")),
            ),
          ],
        ),
      ),
    );
  }

  Future<Null> firariantsoa() async {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: CustomText("TAHIAN'I TOMPO", color: Colors.teal),
            contentPadding: const EdgeInsets.all(20.0),
            children: [
              Image.asset("assets/blessed.jpg"),
              Container(height: 25.0),
              CustomText(
                "Mirary soa hatrany! tahin'Tompo, ho ambinin-java manasatra, ho lavitry ny aretina, iriana tsy ho rofy ho ampoky ny tositosy e! xD",
                color: Colors.grey[900],
              ),
              Container(height: 25.0),
              RaisedButton(
                color: Colors.teal,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: CustomText(
                  "MISAOTRA E!",
                  factor: 1.3,
                ),
              )
            ],
          );
        });
  }
}
