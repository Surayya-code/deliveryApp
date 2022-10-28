import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import '../../widgets/bottom_cart_sheet.dart';
import '../../widgets/categories_widget.dart';
import '../../widgets/items_widget.dart';
import '../../widgets/popularitems_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade800,
      body: SafeArea(child: 
      SingleChildScrollView(child:
      Column(children: [
        Container(
          padding: const EdgeInsets.only(right: 20,left: 15,top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
           const Icon(
                Icons.menu,
                color: Colors.white,
                size: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.yellow.shade900,
                  borderRadius:  BorderRadius.circular(10),
                  boxShadow:[
                    BoxShadow(color: Colors.white.withOpacity(0.5),
                    blurRadius: 2,
                  ), 
               ]),
               child: Badge(
                badgeColor: Colors.red,
                padding: const EdgeInsets.all(6),
                badgeContent:const Text(
                "3",
                style: TextStyle(color: Colors.white),),
                 child: InkWell(
                  onTap: () { 
                    showSlidingBottomSheet(
                     context,
                     builder: (context){
                  return  SlidingSheetDialog(
                   elevation: 8,
                   cornerRadius: 16,
                   builder: (context, state) {
                     return const BottomCartSheet();
                   },
                  );
                     },);
                  },
                  child: const Icon(Icons.shopping_cart,
                  size: 30,
                  color: Colors.white,),
                 ),
               ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Xoş Gəlmisiniz",style: TextStyle(
                color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold
              ),),
              Text("Bugün ləziz nə var?",
              style: TextStyle(color: Colors.white,fontSize: 20,),)
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all( 15),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children:  [
              const Icon(Icons.search),
            Container(
              margin: const EdgeInsets.only(left: 10),
              width: 250,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Burada axtara bilersen...",
                  border: InputBorder.none,
                ),
              ),
            ),
             const Spacer(),
             const Icon(Icons.filter_list),
            ],
          ),
        ),
        Container(padding: const EdgeInsets.only(top: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:const [
             CategoriesWidget(),
             PopularItemsWidget(),
             ItemsWidget(),
          ],
        ),
        ),
      ],),)),
    );
  }
}