class ProdutoModel {
  final String title;
  final String price;
  final String source;
  final String thumbnail;

  ProdutoModel({
    required this.title,
    required this.price,
    required this.source,
    required this.thumbnail,
  });

  factory ProdutoModel.fromMap(Map<String, dynamic> map){
    return ProdutoModel(
      title: map['title'],
      price: map['price'] ,
      source: map['source'],
      thumbnail: map['thumbnail'],
    );
  }
}