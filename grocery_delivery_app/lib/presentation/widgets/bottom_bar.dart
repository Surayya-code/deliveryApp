import 'package:flutter/material.dart';

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
             Text(
              "₼12",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow.shade800),
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
                  children: const [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 23,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Səbətə əlavə et",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),),
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
