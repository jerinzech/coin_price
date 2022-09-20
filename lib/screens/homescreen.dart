import 'package:coin_price/config/style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        backgroundColor: Colors.black87,
        title: Center(
          child: Text('Coin Price',
              style: montserratStyle.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey)),
        ),
      ),
      body: Container(
        color: Colors.grey[850],
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            CoinCard(
                name: "bitcoin",
                symbol: 'btc',
                imageUrl:
                    "https://assets.coingecko.com/coins/images/1/thumb/bitcoin.png",
                price: 32232,
                change: 933.20,
                changePercentage: 2.698)
          ],
        ),
      ),
    );
  }
}

class CoinCard extends StatelessWidget {
  CoinCard({
    required this.name,
    required this.symbol,
    required this.imageUrl,
    required this.price,
    required this.change,
    required this.changePercentage,
  });

  String name;
  String symbol;
  String imageUrl;
  double price;
  double change;
  double changePercentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade800,
              offset: const Offset(4.0, 4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            ),
            BoxShadow(
              color: Colors.grey.shade900,
              offset: const Offset(-4.0, -4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade800,
                      offset: const Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Colors.grey.shade900,
                      offset: const Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network(imageUrl),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: montserratStyle.copyWith(
                        fontSize: 25.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    symbol,
                    style: montserratStyle.copyWith(
                        fontSize: 20.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price.toDouble().toString(),
                    style: montserratStyle.copyWith(
                        fontSize: 22.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    change.toDouble().toString(),
                    style: montserratStyle.copyWith(
                        fontSize: 18.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    changePercentage.toDouble().toString() + '%',
                    style: montserratStyle.copyWith(
                        fontSize: 18.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
