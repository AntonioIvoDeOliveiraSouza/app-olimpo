import 'package:flutter/material.dart';
import 'package:olimpo/screens/favorite_athletes_screen.dart';
import 'package:olimpo/screens/favorite_modalities_screen.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favoritos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildGradientButton(
              context: context,
              icon: Icons.person,
              title: 'Atletas Favoritos',
              subtitle: 'Ver seus atletas salvos',
              startColor: Colors.purple.shade400,
              endColor: Colors.deepPurple.shade600,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const FavoriteAthletesScreen()),
                );
              },
            ),
            const SizedBox(height: 16),
            _buildGradientButton(
              context: context,
              icon: Icons.sports_mma,
              title: 'Modalidades Favoritas',
              subtitle: 'Ver modalidades que você gostou',
              startColor: Colors.orange.shade400,
              endColor: Colors.deepOrange.shade600,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const FavoriteModalitiesScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGradientButton({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
    required Color startColor,
    required Color endColor,
    required VoidCallback onTap,
  }) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [startColor, endColor]),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: endColor.withValues(alpha: 0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.18),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon, color: Colors.white, size: 28),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.9),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.chevron_right, color: Colors.white70),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
