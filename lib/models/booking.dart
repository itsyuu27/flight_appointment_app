import 'flight.dart';
import 'passenger.dart';

class Booking {
  final int bookingId;
  final int userId;
  final Flight flight;
  final DateTime bookingDatetime;
  final double totalPrice;
  final String status;
  final List<Passenger> passengers;

  Booking({
    required this.bookingId,
    required this.userId,
    required this.flight,
    required this.bookingDatetime,
    required this.totalPrice,
    required this.status,
    required this.passengers,
  });

  factory Booking.fromJson(Map<String, dynamic> json) {
    var passengerList = json['passengers'] as List;
    List<Passenger> passengers =
        passengerList.map((i) => Passenger.fromJson(i)).toList();

    return Booking(
      bookingId: json['booking_id'],
      userId: json['user_id'],
      flight: Flight.fromJson(json['flight']),
      bookingDatetime: DateTime.parse(json['booking_datetime']),
      totalPrice: (json['total_price'] as num).toDouble(),
      status: json['status'],
      passengers: passengers,
    );
  }
}