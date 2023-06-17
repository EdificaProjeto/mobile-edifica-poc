import 'dart:convert';

import '../http/exceptions.dart';
import '../http/http_client.dart';
import '../models/produto_model.dart';

abstract class IProdutoRepository {
  Future<List<ProdutoModel>> getProdutos();
}

class ProdutoRepository implements IProdutoRepository {
  final IHttpClient client;

  ProdutoRepository({required this.client});

  @override
  Future<List<ProdutoModel>> getProdutos() async {
    final response = await client.get(
      url: 'https://serpapi.com/search.json?engine=google_shopping&q=Paint&api_key=e79a944e6de62000a66b20376533f33a56e44d3731eed10eb9a9275f8b1825da',

    );
    if (response.statusCode == 200) {
      final List<ProdutoModel> produtos = [];

      final body = jsonDecode(response.body);

      body['shopping_results'].map((item) {
        final ProdutoModel produto = ProdutoModel.fromMap(item);
        produtos.add(produto);
      }).toList();
      return produtos;
    } else if (response.statusCode == 404) {
      throw NotFoundException('A url informada não é válida.');
    } else {
      throw Exception('Não foi possível carregar os produtos');
    }
  }
}
