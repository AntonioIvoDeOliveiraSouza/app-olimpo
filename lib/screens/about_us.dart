import 'package:flutter/material.dart';
import 'package:olimpo/widgets/watermark_background.dart';
import 'package:olimpo/widgets/team_member_card.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        title: const Text('Olimpo'),
      ),
      body: WatermarkBackground(
        child: _buildContent(context),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Olimpo',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),
            Text(
              'Equipe de Desenvolvimento',
              style: TextStyle(
                color: Colors.green[800],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  TeamMemberCard(name: 'Antonio Ivo'),
                  SizedBox(height: 12),
                  TeamMemberCard(name: 'Giovanna'),
                  SizedBox(height: 12),
                  TeamMemberCard(name: 'Hyann Gabriel'),
                  SizedBox(height: 12),
                  TeamMemberCard(name: 'Juliana'),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.2),
          ],
        ),
      ),
    );
  }
}
