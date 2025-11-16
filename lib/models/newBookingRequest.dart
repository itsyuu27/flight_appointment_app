import 'passenger.dart';

class NewBookingRequest {
  final int userId;
  final int flightId;
  final double totalPrice;
  final List<Passenger> passengers;

  NewBookingRequest({
    required this.userId,
    required this.flightId,
    required this.totalPrice,
    required this.passengers,
  });

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'flight_id': flightId,
      'total_price': totalPrice,
      // Convert list of Passenger objects to list of Maps
      'passengers': passengers.map((p) => p.toJson()).toList(),
    };
  }
}