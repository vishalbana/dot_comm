import 'package:dot_comm/components/my_button.dart';
import 'package:flutter/material.dart';



class IndexPage extends StatelessWidget {
const IndexPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //logo
            Icon(
              Icons.shopping_cart_outlined,
              size: 92,
              color: Theme.of(context).colorScheme.primary,
              ),
            
            const SizedBox(height: 25),

            //title
            const Text(
              "Dot Commerce",
              style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.amber, 
              fontSize: 28,
              ),
            ),

            const SizedBox(height: 10),

            //subtitle
            const Text(
              "Powered by BigDot",
              style: TextStyle(
              color: Colors.amber
              ),
            ),

            const SizedBox(height: 25),

            //button

            MyButton(
              onTap: () => Navigator.pushNamed(context,'/shop_page'), 
              child: const Text("Shop Now",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold 
              ),
              ),
            ),
            ],
        )
        ),
    );
  }
}