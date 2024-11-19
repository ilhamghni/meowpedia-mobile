

import 'package:flutter/material.dart';
import 'package:meowpedia_mobile/screens/list_catentry.dart';
import 'package:meowpedia_mobile/screens/login.dart';
import 'package:meowpedia_mobile/widgets/catentry_form.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';


class ItemCard extends StatelessWidget {
  final ItemHomepage item;
  final Color color;

  const ItemCard(this.item, {super.key, required this.color});

@override
Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () async {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));

          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Tambah Produk") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CatEntryFormPage()));
          }
          else if (item.name == "Lihat Daftar Produk") {
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => const CatEntryPage()
                ),
            );   
          }
          else if (item.name == "Logout") {
            final response = await request.logout(
                "http://127.0.0.1:8000/auth/logout/");
            String message = response["message"];
            if (context.mounted) {
                if (response['status']) {
                    String uname = response["username"];
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("$message Sampai jumpa, $uname."),
                    ));
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(message),
                        ),
                    );
                }
            }
        }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.black,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemHomepage {
  final String name;
  final IconData icon;

  ItemHomepage(this.name, this.icon);
}