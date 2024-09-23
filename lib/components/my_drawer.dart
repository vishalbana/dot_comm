import 'package:dot_comm/components/my_list_tile.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget{
  const MyDrawer
({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            DrawerHeader(
          child: Center(
            child: Icon(
              Icons.shopping_cart,
              size: 72,
              color: Theme.of(context).colorScheme.background,
            ),
            ),
            ),

            const SizedBox(height: 25),

          // shop tile
          MyListTile(
            text: "Shop",
            icon: Icons.home_outlined,
            textStyle: const TextStyle(
      color: Colors.amber),
            onTap: () => Navigator.pop(context),
          ),

         // cart tile
          MyListTile(
            text: "Cart", 
            icon: Icons.shopping_cart, 
           textStyle: const TextStyle(
      color: Colors.amber),
            onTap: () {
              Navigator.pop(context);

              //go to the cart page
              Navigator.pushNamed(context, '/cart_page');
            }
          ), 
          ],
          ), 

           // exit tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
            text: "Exit",
            textStyle: const TextStyle(
            color: Colors.amber),
            icon: Icons.logout, 
            onTap: () => Navigator.pushNamedAndRemoveUntil(context, '/index_page', (route) => false)
          ),
          ),  
        ],
      ),
    );
}
}