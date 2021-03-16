import 'package:flutter/material.dart';
import 'package:minggu_6/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;

  const ItemPage({Key key, this.tempItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(tempItem.name),
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
          margin: EdgeInsets.all(60),
          padding: EdgeInsets.all(40),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white70,
              border: Border.all(color: Colors.blueAccent, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(5.0))),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Text('Nama Kasir : ' + tempItem.kasir),
            ),
            Center(
              child: Text('Kode Barang : ' + tempItem.kode.toString()),
            ),
            Center(
              child: Text('Harga  : ' + tempItem.price.toString()),
            ),
           ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back"),
              ),
            
          ]),
        ),
      ),
    );
  }
}
