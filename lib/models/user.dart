class User {
  final String username;
  final String password;
  final String location;
  final String businessDescription;
  final String size; // small, medium, large

  User({
    required this.username,
    required this.password,
    required this.location,
    required this.businessDescription,
    required this.size,
  });
}