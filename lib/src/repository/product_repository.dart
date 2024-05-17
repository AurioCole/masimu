import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:masimu_app/src/model/product_model.dart';


class ProductRepository {

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Product>> fetchProducts() async{    
    try {
      final snapshot = await _db.collection('products').get();
      return snapshot.docs
      .map((doc) => Product(
        id: doc.id, 
        name: doc['name'], 
        category: doc['category'], 
        price: doc['price'], 
        thumbnail: doc['thumbnail'], 
        images: doc['images'], 
        availability: doc['availability']
        )
      )
      .toList();  
    } catch (e) {
      print('Error fetching products: $e');
      return [];
    }
  }
  
}