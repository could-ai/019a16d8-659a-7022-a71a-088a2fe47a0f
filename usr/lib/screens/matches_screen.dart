import 'package:flutter/material.dart';
import '../models/profile.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // For now, show all profiles as matches for demonstration
    final matches = Profile.getMockProfiles();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Matches'),
      ),
      body: ListView.builder(
        itemCount: matches.length,
        itemBuilder: (context, index) {
          final profile = matches[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profile.imageUrl),
            ),
            title: Text(profile.name),
            subtitle: Text(profile.bio),
            onTap: () {
              // TODO: Implement chat screen navigation
            },
          );
        },
      ),
    );
  }
}
