import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:flutter/material.dart';
import 'package:olimpo/models/olympics.dart';
import 'package:olimpo/screens/bio_olympics_screen.dart';
import 'package:olimpo/widgets/model_grid_item.dart';
import 'package:olimpo/widgets/nav_bar.dart';

class OlympicsScreen extends StatelessWidget {
  const OlympicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Olimpíadas"),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('olimpiadas').snapshots(),
        
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Center(child: Text("Erro ao carregar dados."));
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Text("Nenhuma olimpíada encontrada."));
          }

          final documents = snapshot.data!.docs;

          return GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 4 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemCount: documents.length, 
            itemBuilder: (context, index) {
              final doc = documents[index];
              final data = doc.data() as Map<String, dynamic>;
              
              final olympics = Olympics.fromMap(data, doc.id);
              return GridItem(
                item: olympics,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => BioOlympics(bioolympics: olympics),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      bottomNavigationBar: NavBar(parentContext: context),
    );
  }
}