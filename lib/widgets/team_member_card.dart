import 'package:flutter/material.dart';

class TeamMemberCard extends StatelessWidget {
  final String name;

  const TeamMemberCard({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.green[100]!),
      ),
      child: Row(
        children: [
          Icon(
            Icons.person_outline,
            color: Colors.green[800],
            size: 20,
          ),
          const SizedBox(width: 12),
           Text(
            name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}