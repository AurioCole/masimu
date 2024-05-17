class Product {

  final String id;
  final String name;
  final String category;
  final String price;
  final String thumbnail;
  final String images;
  final String availability;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.thumbnail,
    required this.images,
    required this.availability,
  });

  factory Product.fromMap(Map<String, dynamic> map, String id) {
    return Product(
      id: id,
      name: map['name'],
      category: map['category'],
      price: map['price'],
      thumbnail: map['thumbnail'],
      images: map['image'],
      availability: map['availability'],
    );
  }

  Map<String, dynamic> toMap(){
    return{
      'name': name,
      'category': category,
      'price': price,
      'images': images,
      'thumbnail':thumbnail,
      'availability': availability,
    };
  } 

}