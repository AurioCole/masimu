import 'package:flutter/material.dart';
import 'package:masimu_app/src/view/components/card.dart';
import 'package:masimu_app/src/viewModel/product_viewmodel.dart';
import 'package:provider/provider.dart';

class ProductsWidget extends StatefulWidget {
  const ProductsWidget({super.key,});

  @override
  State<ProductsWidget> createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {


  @override
  Widget build(BuildContext context) {

    final productViewModel = Provider.of<ProductViewModel>(context);
    
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 6,
          mainAxisSpacing: 6,
          childAspectRatio: 9/12.5
        ), 
        itemCount: productViewModel.products.length,
        itemBuilder: (context, index){
          final product = productViewModel.products[index];
          return CardItem(
            name: product.name, 
            price: product.price, 
            availability: product.availability
          );
        }
      ),
    );
  }
}
