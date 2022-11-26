import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'İlham ver'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);

    final double width = ekranBilgisi.size.width;
    final double height = ekranBilgisi.size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height / 100, bottom: height / 100),
              child: SizedBox(
                  width: width / 4, child: Image.asset("images/stevejobs.png")),
            ),
            Text("Steje Jobs",
                style: TextStyle(
                    fontSize: width / 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold)),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: width / 100, left: width / 100),
              child: Text(
                  "Dün için üzülmek yerine gelin, geleceği inşa edelim.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: width / 25)),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: height/50),
              child: SizedBox(
                width: width/2,
                height: height/15,
                child: ElevatedButton(
                  child: Text(
                    "İlham ver",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width / 25,
                    ),
                  ),
                  onPressed: () {
                    print("Merhaba");
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
