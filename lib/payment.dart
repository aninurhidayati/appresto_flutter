import 'package:aniresto/payment.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:aniresto/model/menuresto.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class Payment extends StatelessWidget {
  final Menus menu;

  const Payment({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return DetailPayment(menu: menu);
      },
    );
  }
}

class DetailPayment extends StatelessWidget {
  final Menus menu;

  const DetailPayment({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(menu.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                "Pembayaran",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Nama Menu"),
                      const SizedBox(height: 8.0),
                      Text(
                        menu.name,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Harga"),
                      const SizedBox(height: 8.0),
                      Text(
                        menu.price,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Jumlah"),
                      const SizedBox(height: 8.0),
                      Text(
                        "1",
                        style: informationTextStyle,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                "Total Pembayaran : ${menu.price}",
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Payment(menu: menu);
                  }));
                },
                child: const Text('Bayar'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}