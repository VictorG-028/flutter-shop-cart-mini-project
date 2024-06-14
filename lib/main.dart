import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "/": (context) => const ShopPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final _shopItems = <ShopItem>[]; // Preencher com itens a venda padrão
  final _cartItems = <ShopItem>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildShopPage(),
    );
  }

  Widget _buildShopPage() {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              _partial(),
              _partial(),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              _partial(),
              _partial(),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              _partial(),
              _partial(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _partial() {
    return Expanded(
      child: ListView(
        // shrinkWrap: true,
        // physics: const ClampingScrollPhysics(),
        children: const [
          UnconstrainedBox(
            child: ShopItem(),
          ),
          UnconstrainedBox(
            child: ShopItem(),
          ),
          UnconstrainedBox(
            child: ShopItem(),
          ),
        ],
      ),
    );
  }
}

class ShopItem extends StatelessWidget {
  const ShopItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // alignment: const Alignment(1.0, 1.0),
        padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 4.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 215, 253, 241),
          border: Border.all(
            color: const Color.fromARGB(255, 10, 151, 167),
            width: 3.0,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        width: 256,
        height: 360,
        child: Column(
          children: [
            // Image.network(
            //   'https://docs.flutter.dev/assets/images/dash/early-dash-sketches2.jpg',
            //   semanticLabel: "Flutter mascot",
            // ),
            Image.asset(
              'images/flutter_bird.jpg',
              semanticLabel: "Flutter mascot",
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 0.0,
                vertical: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("R\$ 19,99"),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.add_shopping_cart,
                      semanticLabel: "Adicionar no carrinho",
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              height: 6.0,
              thickness: 2.0,
            ),
          ],
        ));
  }
}
