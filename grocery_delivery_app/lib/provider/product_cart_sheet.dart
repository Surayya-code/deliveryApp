import 'package:flutter/cupertino.dart';

class ProductCartSheet extends ChangeNotifier{
  int _productCount=0;
  int get productCount=> _productCount;

  void incrProductCount(){
   _productCount++;
    notifyListeners();
  }
   void decrProductCount(){
   _productCount--;
    notifyListeners();
  }

  // void removeProduct(){
  //   productCount.remove;
  // }
}