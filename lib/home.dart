import 'package:flutter/material.dart';
import 'package:projectinventori/main.dart';

class Home extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'flutter tutorials', home: Main());
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Home', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 8, left: 8),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              Text('Welcome', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Text('Fijriati', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text('Product in', style: const TextStyle(fontSize: 20)),
                        Text('10', style: const TextStyle(fontSize: 50)),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_downward,
                    size: 40,
                    color: Colors.green,
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text('Product out', style: const TextStyle(fontSize: 20)),
                        Text('4', style: const TextStyle(fontSize: 50)),
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_upward, size: 40, color: Colors.red),
                ],
              ),
              Text('Low stock', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Text('Stock warning', style: const TextStyle(fontSize: 15)),
              Row(
                children: <Widget>[
                  Card(
                    elevation: 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      child: Image.network('https://www.converse.id/media/catalog/product/cache/144a401d4eb9f312744987a3cea154c3/C/O/CON171996C-1.jpg', width: 80, height: 80),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Brand new shoes', textAlign: TextAlign.left, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('SH-231', textAlign: TextAlign.left, style: const TextStyle(fontSize: 15)),
                      RaisedButton(
                        child: Text('STOCK 2'),
                        color: Colors.red,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Card(
                    elevation: 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      child: Image.network('https://www.converse.id/media/catalog/product/cache/144a401d4eb9f312744987a3cea154c3/C/O/CON171997C-1.jpg', width: 80, height: 80),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Brand new shoes', textAlign: TextAlign.left, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('SH-127', textAlign: TextAlign.left, style: const TextStyle(fontSize: 15)),
                      RaisedButton(
                        child: Text('STOCK 10'),
                        color: Colors.green,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Card(
                    elevation: 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      child: Image.network('https://www.converse.id/media/catalog/product/cache/144a401d4eb9f312744987a3cea154c3/C/O/CONA01734C-1.jpg', width: 80, height: 80),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Brand new shoes', textAlign: TextAlign.left, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('SH-825', textAlign: TextAlign.left, style: const TextStyle(fontSize: 15)),
                      RaisedButton(
                        child: Text('STOCK 50'),
                        color: Colors.green,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: RaisedButton.icon(
                    color: Colors.blue,
                    label: Text("New transaction", style: TextStyle(color: Colors.white)),
                    icon: Icon(Icons.add, color: Colors.white),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
                    onPressed: () {},
                  ))
            ])));
  }
}
