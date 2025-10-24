import 'package:flutter/material.dart';
import '../models/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Profile> _profiles = Profile.getMockProfiles();
  int _currentIndex = 0;

  void _like() {
    if (_currentIndex < _profiles.length - 1) {
      setState(() {
        _currentIndex++;
      });
    }
  }

  void _pass() {
    if (_currentIndex < _profiles.length - 1) {
      setState(() {
        _currentIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_currentIndex >= _profiles.length) {
      return const Center(child: Text('No more profiles!'));
    }

    final profile = _profiles[_currentIndex];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Card(
              margin: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Expanded(
                    child: Image.network(
                      profile.imageUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${profile.name}, ${profile.age}',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        const SizedBox(height: 8),
                        Text(profile.bio),
                        const SizedBox(height: 8),
                        Wrap(
                          spacing: 8.0,
                          children: profile.interests
                              .map((interest) => Chip(label: Text(interest)))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: _pass,
                backgroundColor: Colors.red,
                child: const Icon(Icons.close),
              ),
              FloatingActionButton(
                onPressed: _like,
                backgroundColor: Colors.green,
                child: const Icon(Icons.favorite),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}