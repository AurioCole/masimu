class Category {

  final String id;
  final String name;
  final String thumbnail;

  Category({
    required this.id,
    required this.name,
    required this.thumbnail,
  });
  
  factory Category.fromMap(Map<String, dynamic> map, String id) {
    return Category(
      id: id, 
      name: map['name'], 
      thumbnail: map['thumbnail'],
    );
  }

  Map<String, dynamic> toMap(){
    return{
      'name': name,
      'thumbnail': thumbnail,
    };
  }
}