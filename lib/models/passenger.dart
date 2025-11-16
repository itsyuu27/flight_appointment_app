class Passenger {
  final int? passengerId;
  final int? bookingId;
  final String fullName;
  final String gender;
  final DateTime dateOfBirth;
  final String nationality;

  Passenger({
    this.passengerId,
    this.bookingId,
    required this.fullName,
    required this.gender,
    required this.dateOfBirth,
    required this.nationality,
  });

  factory Passenger.fromJson(Map<String, dynamic> json) {
    return Passenger(
      passengerId: json['passenger_id'],
      bookingId: json['booking_id'],
      fullName: json['full_name'],
      gender: json['gender'],
      dateOfBirth: DateTime.parse(json['date_of_birth']),
      nationality: json['nationality'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'full_name': fullName,
      'gender': gender,
      'date_of_birth':
          "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
      'nationality': nationality,
    };
  }
}