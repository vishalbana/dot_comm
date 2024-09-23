import 'package:dot_comm/components/my_drawer.dart';
import 'package:dot_comm/components/my_product_tile.dart';
import 'package:dot_comm/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;



class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {

    //acess products in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 2,
        foregroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Dot Originals"),
        actions: [
          //cart button
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/cart_page'), 
              icon: const badges.Badge(
                badgeContent: Text("0"),
                child: Icon(Icons.shopping_cart_outlined,))
                        ),
        ],
        ),
        drawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          children: [
            const SizedBox(height: 25),
           
            // subtitle product
            Center(
              child: Text("For your wardrobe",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontWeight: FontWeight.bold
              )
              ),
            ),


            // Product list
      SizedBox(
        height: 550,
        child: ListView.builder(
        itemCount: products.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(15),
        itemBuilder: (context, index) {

          //get each product from shop
          final product = products[index];

          // return as a product tile UI

          return MyProductTile(product: product);
        }
        ),
    ),
          ],
        )
    );
  }
}