import 'package:dot_comm/components/my_button.dart';
import 'package:dot_comm/models/product.dart';
import 'package:dot_comm/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // remove item from cart method

  void removeItemFromCart(BuildContext context, 
  Product product )
  {
     showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        content: const Text("Are you sure you want to remove this item from your cart?",
        style: TextStyle(color: Colors.amber)),
        actions : [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel",
            style: TextStyle(color: Colors.amber)),
            ),
            //Yes button

            MaterialButton(
              onPressed: 
            (){
              Navigator.pop(context);

              //add to cart
              context.read<Shop>().removeFromCart(product);
            },
            child: const Text("Yes",
            style: TextStyle(color: Colors.amber)),
            )
        ]
      )
      );
    }

//count items in the cart

void countItemsInCart(BuildContext context , Product product){
  
}


//user press pay button

void payButtonPressed(BuildContext context){ 
  showDialog(
    context: context, 
    builder: (context) => const AlertDialog(
      content: Text("User wants to pay please connect with CBQ for payment gateway",
      style: TextStyle(color: Colors.amber),)
    )
  );

}

  @override
  Widget build(BuildContext context) {

    //get acess to the cart
    final cart = context.watch<Shop>().cart;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 2,
        foregroundColor: Colors.amber,
        title: const Text("Your Shoping Cart"),

      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [

          Expanded(
            child: cart.isEmpty
            ? const Center(
              child: Text("Thers is nothing in your cart. Let's add some items.",
              style: TextStyle(
                color: Colors.amber,
              ),
              )
              )
            : ListView.builder(
              itemCount: cart.length,
              itemBuilder : (context,index){

              // get individual itam in cart

              final item = cart[index];
          
              //return as a cart tile UI
              return ListTile(
                title: Text(item.name),
                textColor: Colors.amber,
                subtitle: Text(item.price.toStringAsFixed(2)),
                trailing: IconButton(
                  icon: const Icon(Icons.remove),
                  color: Colors.amber,
                onPressed: () => removeItemFromCart(context, item),
                ), 
              );

          },
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: MyButton(
              onTap: () => payButtonPressed(context), child: const Text("PAY NOW")),
          )
        ],
        ),
    );
  }
}