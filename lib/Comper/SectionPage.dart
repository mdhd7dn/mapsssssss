import 'package:flutter/material.dart';
import 'Cardss.dart'; 
class SectionPage extends StatelessWidget {
  final Cardss section;

  const SectionPage({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(section.name),
      ),
      body: ListView.builder(
        itemCount: section.products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(section.products[index].image),
            title: Text(section.products[index].name),
          );
        },
      ),
    );
  }
}
