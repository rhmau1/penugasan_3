import 'package:flutter/material.dart';
import 'package:projectinventori/main.dart';

class Product extends StatelessWidget {
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
          title: Text('Products', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_outlined),
          )),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: ListTile(
                leading: Image.network(
                  'https://www.planetsports.asia/media/catalog/product/cache/144a401d4eb9f312744987a3cea154c3/0/1/01-CONVERSE-FFSSBCON0-Converse-RUN-STAR-HIKE-LUGGED-Unisex-Sneakers-Shoes---BLACK-WHITE-GUM-CON166800C-Black_1.jpg',
                ),
                trailing: Icon(Icons.delete, color: Colors.red),
                title: Text(
                  'Brand new shoes',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  'SH-213',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.add),
        label: Text('tambah'),
      ),
    );
  }
}
