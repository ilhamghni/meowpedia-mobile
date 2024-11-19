import 'package:flutter/material.dart';
import 'package:meowpedia_mobile/models/cat_entry.dart';
import 'package:meowpedia_mobile/screens/detail_cat.dart';

import 'package:meowpedia_mobile/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class CatEntryPage extends StatefulWidget {
  const CatEntryPage({super.key});

  @override
  State<CatEntryPage> createState() => _CatEntryPageState();
}

class _CatEntryPageState extends State<CatEntryPage> {
  Future<List<CatEntry>> fetchCats(CookieRequest request) async {
    final response = await request.get('http://127.0.0.1:8000/json/');
    var data = response;
    
    List<CatEntry> listCat = [];
    for (var d in data) {
      if (d != null) {
        listCat.add(CatEntry.fromJson(d));
      }
    }
    return listCat;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Kucing'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchCats(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Belum ada kucing yang terdaftar.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailCatPage(cat: snapshot.data![index]),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${snapshot.data![index].fields.name}",
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text("Species: ${snapshot.data![index].fields.species}")
                      ],
                    ),
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}