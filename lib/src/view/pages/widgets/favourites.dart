import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:masimu_app/src/viewModel/product_viewmodel.dart';
import 'package:provider/provider.dart';

class FavouritesWidget extends StatefulWidget {
  const FavouritesWidget({super.key});

  @override
  State<FavouritesWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<FavouritesWidget> {

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
          final price = product.price;
          return Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: <Widget> [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: (){}, 
                      icon: const Icon(
                        Icons.favorite_border, 
                        color: Color(0xFF39B54A), 
                        size: 20
                      )
                    )
                  ],
                ),
                Image.asset(
                  "lib/assets/images/veget.png",
                  scale: 0.90,
                  filterQuality: FilterQuality.high,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 10,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                        itemBuilder: (context, _) => const  Icon(
                          Icons.star,
                          color: Color(0xFF39B54A),
                        ),
                        onRatingUpdate: (index) {},
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: product.availability == "Disponível" ?
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 1.0),
                          child: Text(
                            product.availability,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      )
                      :
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red.shade100,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 1.0),
                          child: Text(
                            product.availability,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      )
                    ),
                  ],
                ),
                Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "MZN$price",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color:Color(0xFF39B54A) 
                      ),
                    ),
                    IconButton(
                      onPressed: (){}, 
                      icon: const Icon(Icons.add_shopping_cart_sharp, 
                      color: Color(0xFF39B54A), 
                      size: 20,
                    )
                    )
                  ],
                ),
              )
              ],
            ),
          );
        }
      ),
    );
  }
}