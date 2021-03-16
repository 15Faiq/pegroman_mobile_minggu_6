import 'package:flutter/material.dart';
import 'package:minggu_6/models/item.dart';
import 'package:minggu_6/pages/item_page.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, kode: '001', kasir: 'Muhammad Alex'),
    Item(name: 'Salt', price: 2000, kode: '002', kasir: 'Muhammad Alex')
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          title: Text('CEK TOKO SEBELAH'),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff0096ff), Color(0xff6610f2)],
                    begin: FractionalOffset.bottomLeft,
                    end: FractionalOffset.topRight)),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ItemPage(tempItem: item)),
                  );
                },
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(child: Text(item.name)),
                        Expanded(
                          child: Text(
                            item.price.toString(),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
