import 'package:flutter/material.dart';
import 'custom_text.dart';

class PageOpa extends StatefulWidget {
  @override
  _PageOpaState createState() => _PageOpaState();
}

class _PageOpaState extends State<PageOpa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: CustomText(
          "Voaopa enao niany",
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
                  "assets/pirate.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 10.0,
            ),
            // ignore: prefer_const_literals_to_create_immutables
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Icon(Icons.warning),
              const Text(
                "à ne pas appuyez raha tsy mazaka voahopa !!!",
                textScaleFactor: 1.0,
              ),
            ]),
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: RaisedButton(
                  color: Colors.red,
                  onPressed: () {
                    opa();
                  },
                  child: CustomText("Opaina")),
            ),
          ],
        ),
      ),
    );
  }

  Future<Null> opa() async {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: CustomText("PONDRO...", color: Colors.red),
            contentPadding: const EdgeInsets.all(20.0),
            children: [
              Image.asset("assets/fuck.png"),
              Container(height: 25.0),
              CustomText(
                "Way mama! maninona aty ko mama :o !!! KI***NDRENTY efa tenenina tyh tsy ile** kisoa an'olona zao lazain'olona fa mpangalatra kisoa xD !",
                color: Colors.grey[900],
              ),
              Container(height: 25.0),
              RaisedButton(
                color: Colors.red,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: CustomText(
                  "IENY WA!",
                  factor: 1.3,
                ),
              )
            ],
          );
        });
  }
}
