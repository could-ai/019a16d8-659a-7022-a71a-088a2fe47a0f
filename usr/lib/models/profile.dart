class Profile {
  final String id;
  final String name;
  final int age;
  final String bio;
  final String imageUrl;
  final List<String> interests;

  Profile({
    required this.id,
    required this.name,
    required this.age,
    required this.bio,
    required this.imageUrl,
    required this.interests,
  });

  // Mock data generator for demonstration
  static List<Profile> getMockProfiles() {
    return [
      Profile(
        id: '1',
        name: 'Alice',
        age: 25,
        bio: 'Loves hiking and photography.',
        imageUrl: 'https://via.placeholder.com/300',
        interests: ['Hiking', 'Photography', 'Travel'],
      ),
      Profile(
        id: '2',
        name: 'Bob',
        age: 30,
        bio: 'Tech enthusiast and coffee lover.',
        imageUrl: 'https://via.placeholder.com/300',
        interests: ['Technology', 'Coffee', 'Books'],
      ),
      Profile(
        id: '3',
        name: 'Charlie',
        age: 28,
        bio: 'Musician and foodie.',
        imageUrl: 'https://via.placeholder.com/300',
        interests: ['Music', 'Food', 'Cooking'],
      ),
    ];
  }
}