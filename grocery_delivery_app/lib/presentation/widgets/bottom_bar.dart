import 'package:flutter/material.dart';
import 'package:grocery_delivery_app/provider/product_cart_sheet.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        // height: 50,
        padding: const EdgeInsets.symmetric(vertical:10,horizontal: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Consumer<ProductCartSheet>(
               builder: (context,product,child) {
                 return Text(
                  "₼ ${product.productCount}",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow.shade800),
            );
               }
             ),
            InkWell(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric( horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.yellow.shade800,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children:  [
                    const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 23,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap:(){},
                      child: const Text("Səbətə əlavə et",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
