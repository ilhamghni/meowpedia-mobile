import 'package:flutter/material.dart';
import 'package:meowpedia_mobile/models/cat_entry.dart';

class DetailCatPage extends StatelessWidget {
  final CatEntry cat;

  const DetailCatPage({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Kucing'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cat.fields.name,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            DetailItem(label: "Species", value: cat.fields.species),
            DetailItem(label: "Age", value: "${cat.fields.age} years"),
            DetailItem(label: "Price", value: "Rp${cat.fields.price}"),
            DetailItem(label: "Color", value: cat.fields.colour),
            DetailItem(label: "Description", value: cat.fields.description),
          ],
        ),
      ),
    );
  }
}

class DetailItem extends StatelessWidget {
  final String label;
  final String value;

  const DetailItem({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
