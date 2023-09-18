// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars
import 'package:balbina/db/Product.dart';
import 'package:flutter/foundation.dart';



class Counter with ChangeNotifier, DiagnosticableTreeMixin {
  int _count = 0;
  
  

  List<Product> listaCart= [];
  int get count => _count;

  void increment(int qtda, String s) {
    Product prod=new Product(s, qtda);
    listaCart.add(prod);
    notifyListeners();
  }

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('count', count));
  }
}
