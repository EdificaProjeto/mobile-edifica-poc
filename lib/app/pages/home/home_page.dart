import 'dart:io';

import 'package:edificando/app/data/repository/produto_repository.dart';
import 'package:edificando/app/pages/home/store/produto_store.dart';
import 'package:edificando/app/data/http/http_client.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ProdutoStore store = ProdutoStore(
    repository: ProdutoRepository(
      client: HttpClient(),
    ),
  );

  @override
  void initState() {
    super.initState();
    store.getProdutos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        flexibleSpace: Padding(
          padding: EdgeInsets.only(top: 20.0, bottom: 10),
          // Defina o espaçamento desejado no topo
          child: Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/edificar_maior.png',
              fit: BoxFit
                  .contain, // Para ajustar a imagem ao tamanho do Container
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                // Lógica de pesquisa aqui
              },
              decoration: InputDecoration(
                labelText: "Search",
                labelStyle: TextStyle(
                  color: Colors.black
                ),
                hintText: "Pesquisar",
                prefixIcon: Icon(
                    Icons.search,
                  color: Color(0xFFD76222),
                ),
                suffixIcon: Icon(
                  Icons.mic,
                  color: Color(0xFFD76222),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0)
                  )
                )
              ),
            ),
          ),
          Expanded(
            child: AnimatedBuilder(
              animation: Listenable.merge([
                store.isLoading,
                store.erro,
                store.state,
              ]),
              builder: (context, child) {
                if (store.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (store.erro.value.isNotEmpty) {
                  return Center(
                    child: Text(
                      store.erro.value,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
                }

                if (store.state.value.isEmpty) {
                  return Center(
                    child: Text(
                      'Nenhum item na lista',
                      style: const TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
                } else {
                  return ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 32,
                    ),
                    padding: const EdgeInsets.all(16),
                    itemCount: store.state.value.length,
                    itemBuilder: (_, index) {
                      final item = store.state.value[index];
                      return Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(
                              item.thumbnail,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(
                              item.title,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.price,
                                  style: const TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  item.source,
                                  style: const TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
