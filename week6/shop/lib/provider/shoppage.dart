import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/provider/cart.dart';
import 'package:shop/provider/shopcart.dart';

class Shoppage extends StatelessWidget {
  const Shoppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text('apple'),
                const Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    context.read<GetCart>().add('apple');
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
            Row(
              children: [
                const Text('banana'),
                const Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    context.read<GetCart>().add('banana');
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
            Row(
              children: [
                const Text('orange'),
                const Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    context.read<GetCart>().add('orange');
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
            Text('Total in cart ${context.watch<GetCart>().x}'),
            FloatingActionButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const showCart()));
                }),
                child: Text('Show cart'))
          ],
        ),
      ),
    );
  }
}
