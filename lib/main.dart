import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      title: 'Takoran Vadisi',
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.directions_walk)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.directions_ferry)),
          ],
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          title: const Text(
            "Kanyonlar Diyarı Takoran",
          ),
        ),
        body: const Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(30),
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            gradient: LinearGradient(
                colors: [Colors.black12, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            image: DecorationImage(
                image: AssetImage("assets/images/takoran.jpg"),
                fit: BoxFit.cover),
          ),
          child: const Column(
            children: [
              Text(
                "Saklı Cennet Takorana hoşgeldiniz.",
                style: TextStyle(fontFamily: "Licorice-Regular", fontSize: 25),
              ),
              Text(
                "Dewa ma",
                style: TextStyle(fontFamily: "Licorice-Regular", fontSize: 30),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
