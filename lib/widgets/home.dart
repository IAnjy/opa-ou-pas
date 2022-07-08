import 'package:flutter/material.dart';
import 'package:applo/widgets/custom_text.dart';
import 'package:applo/widgets/page_opa.dart';
import 'package:applo/widgets/page_soa.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: Colors.grey[600],
        title: Text(
          widget.title,
        ),
        leading: const Icon(Icons.health_and_safety),
        // actions: [Text(" "), const Icon(Icons.block)],
        elevation: 10.0,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("jereo ny sarinao alo xD"),
            Card(
              margin: const EdgeInsets.only(top: 0.0),
              elevation: 10.0,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.8,
                width: MediaQuery.of(context).size.width * 0.8,
                // child: AssetImage("applo/assetisa/vrai.jpg"),
                child: Image.asset(
                  "assets/vrai.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text(
              "hifanopa sa hifampirary ny soa ?",
              textScaleFactor: 1.3,
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return PageOpa();
                      }));
                    },
                    child: CustomText(
                      "Hifanopa",
                    )),
                RaisedButton(
                    color: Colors.teal,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return PageSoa();
                      }));
                    },
                    child: CustomText("Hifampirary soa")),
              ],
            ),
          ],
        ),
      ),

      // body: Body(),
    );
  }
}
