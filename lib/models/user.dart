class User {
  final int userId;
  final String email;
  final String username;
  final String? fullName;
  final DateTime? dateOfBirth;
  final String? nationality;
  final DateTime createdAt;

  User({
    required this.userId,
    required this.email,
    required this.username,
    this.fullName,
    this.dateOfBirth,
    this.nationality,
    required this.createdAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['user_id'],
      email: json['email'],
      username: json['username'],
      fullName: json['full_name'],
      dateOfBirth: json['date_of_birth'] != null
          ? DateTime.parse(json['date_of_birth'])
          : null,
      nationality: json['nationality'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'email': email,
      'username': username,
      'full_name': fullName,
      'date_of_birth': dateOfBirth?.toIso8601String(),
      'nationality': nationality,
      'created_at': createdAt.toIso8601String(),
    };
  }
}