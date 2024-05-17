import 'package:flutter/material.dart';
import 'package:masimu_app/src/model/product_model.dart';
import 'package:masimu_app/src/repository/product_repository.dart';

class ProductViewModel extends ChangeNotifier{
  
  late List<Product> _products = [];
  final ProductRepository _repository = ProductRepository();
  List<Product> get products => _products;

  ProductViewModel(){
    fetchProducts();
  }
  
  void fetchProducts() async {
    _products = await _repository.fetchProducts();
    notifyListeners();
  }

}