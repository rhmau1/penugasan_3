import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectinventori/main.dart';

class Transaction extends StatelessWidget {
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
            title: Text('Transaction', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_outlined),
            )),
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                    Text('product information', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                    Text('product image', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        height: 200,
                        child: Center(
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.blue,
                          ),
                        ),
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.blue.shade50, border: Border.all(width: 2, color: Colors.blue), borderRadius: BorderRadius.circular(10))),
                    Text('product name', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'product name', hintText: 'input your product name here'),
                    ),
                    Text('product ID', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'product ID', hintText: 'input your product ID here'),
                    ),
                    Text('price', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'price', hintText: 'input your price here'),
                    ),
                    Text('stock', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'stock', hintText: 'input your product stock here'),
                    ),
                    Text('description', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        height: 100,
                        child: Center(
                          child: Text('input your description here'),
                        ),
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.white, border: Border.all(width: 2, color: Colors.grey), borderRadius: BorderRadius.circular(10))),
                    Text('Low stock', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    Text('change value to 0 for disable low stock warning', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(), labelText: '10', hintText: 'input your product stock here'),
                    ),
                    Text(
                      '',
                    ),
                    TextField(
                      decoration: InputDecoration(border: InputBorder.none, labelText: '', hintText: ''),
                    ),
                    Container(
                      width: 500,
                      height: 45,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          alignment: Alignment.center,
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Add product",
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '',
                    ),
                    TextField(
                      decoration: InputDecoration(border: InputBorder.none, labelText: '', hintText: ''),
                    ),
                  ]));
            }));
  }
}
