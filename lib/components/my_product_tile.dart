import 'package:dot_comm/models/product.dart';
import 'package:dot_comm/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProductTile extends StatelessWidget {
  final Product product;

  const MyProductTile ({
    super.key,
    required this.product,
    });

    //add to cart

    void addToCart(BuildContext context) {
 // show dialog box to ask user to confirm to add to cart.
      showDialog(context: context, 
      builder: (context) => AlertDialog(
        content: const Text("Add this item to your cart?",
        style: TextStyle(color: Colors.amber)),
        actions : [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel",
            style: TextStyle(color: Colors.amber)),
            ),
            //Yes button
//M        
            MaterialButton(
            onPressed: () {
              Navigator.pop(context);

              //add to cart
              context.read<Shop>().addToCart(product);
            },
            child: const Text("Yes",
            style: TextStyle(color: Colors.amber)),
            )
        ]
      )
      );
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(25),
      width: 270,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio : 1,
            
              // image
              child: Container(
              decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(12),
              ),
              width: double.infinity,
              padding: const EdgeInsets.all(5) ,
              child: Image.asset(product.imagePath),
              ),
          ),
            
            const SizedBox(height: 20,),
              //name
              Text(
                product.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                )
                ),
              

            
              // description
              const SizedBox(height: 10),
            
              Text(
                product.description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.background
                ),
                ),
        ],
          ),
        

              const SizedBox(height: 25),
            
              //product price + add to cat button
            
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$' + product.price.toStringAsFixed(2)),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      onPressed: () => addToCart(context), 
                      icon: const Icon(Icons.add,
                      color: Colors.amber,),
                      )
                      )
                ],
              ),
            ],
          ),
      );
  }
}