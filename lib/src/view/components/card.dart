import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:masimu_app/src/viewModel/product_viewmodel.dart';

class CardItem extends StatefulWidget {
  final void Function()? onTap;
  final String name;
  final String price;
  final String availability;
  
  const CardItem({
    super.key, 
    required this.name,
    required this.price,
    required this.availability,
    this.onTap,
  });

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  final product = ProductViewModel();

  @override
  Widget build(BuildContext context) {

    final name = widget.name;
    final price = widget.price;
    final availability = widget.availability;

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
                  name,
                  style: const  TextStyle(
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
                child: availability == "Disponível" ?
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 1.0),
                    child: Text(
                      availability,
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
                      availability,
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
                price,
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
}