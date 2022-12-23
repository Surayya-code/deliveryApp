import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/product_cart_sheet.dart';

class BottomCartSheet extends StatelessWidget {
  const BottomCartSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(top: 20),
        height: 1080,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 1000,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 1; i < 3; i++)
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 8,
                              ),
                            ]),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                "assets/images/$i.png",
                                height: 60,
                                width: 60,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 15),
                                  //alignment: Alignment.centerLeft,
                                  child: Text(
                                    "İtalyan deserti",
                                    style: TextStyle(
                                        color: Colors.yellow.shade800,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                // ignore: avoid_unnecessary_containers
                                Container(
                                  // margin: const EdgeInsets.only(bottom: 8),
                                  //alignment: Alignment.centerLeft,
                                  child: Text(
                                    "₼20",
                                    style: TextStyle(
                                        color: Colors.yellow.shade800,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 10,
                              ),
                              child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.disabled_by_default,
                                      size: 30,
                                      color: Colors.yellow.shade800,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          //padding: const EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                spreadRadius: 3,
                                                blurRadius: 6,
                                              ),
                                            ],
                                          ),
                                          child: InkWell(
                                            onTap: (){
                                              context.read<ProductCartSheet>().decrProductCount();
                                            },
                                            child: const Icon(
                                              Icons.remove,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Consumer<ProductCartSheet>(
                                            builder: (context,prCount,child) {
                                              return  Text(
                                                "${prCount.productCount}",//0
                                                style:const TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold),
                                              );
                                            }
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                spreadRadius: 2,
                                                blurRadius: 8,
                                              ),
                                            ],
                                          ),
                                          child: GestureDetector(
                                            onTap: (){
                                              Provider.of<ProductCartSheet>(context, listen: false).incrProductCount();
                                              //context.read<ProductCartSheet>().incrProductCount();
                                            },
                                            child: const Icon(
                                              Icons.add,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 8,
                            ),
                          ]),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Çatdırılma Haqqı: ",
                                style: TextStyle(
                                    color: Colors.yellow.shade800,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Consumer<ProductCartSheet>(
                                builder: (context,product,child) {
                                  return Text(
                                    " \$ ${product.productCount}",
                                    style: TextStyle(
                                        color: Colors.yellow.shade800,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  );
                                }
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Cəmi məbləğ:   ",
                                style: TextStyle(
                                    color: Colors.yellow.shade800,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Consumer<ProductCartSheet>(
                                builder: (context,product,child) {
                                  return Text(
                                    "\$ ${product.productCount*product.productCount}  ",
                                    style: TextStyle(
                                        color: Colors.yellow.shade800,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  );
                                }
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 8,
                    ),
                  ]),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$120",
                      style: TextStyle(
                          color: Colors.yellow.shade800,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.yellow.shade800,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Text(
                          "Səbətə əlavə et",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
