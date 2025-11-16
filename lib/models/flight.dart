import 'airline.dart';
import 'airport.dart';

class Flight {
  final int flightId;
  final String flightNumber;
  final Airline airline; 
  final Airport departureAirport;
  final Airport arrivalAirport;
  final DateTime departureDatetime;
  final DateTime arrivalDatetime;
  final double basePrice;
  final int availableSeats;

  Flight({
    required this.flightId,
    required this.flightNumber,
    required this.airline,
    required this.departureAirport,
    required this.arrivalAirport,
    required this.departureDatetime,
    required this.arrivalDatetime,
    required this.basePrice,
    required this.availableSeats,
  });

  factory Flight.fromJson(Map<String, dynamic> json) {
    return Flight(
      flightId: json['flight_id'],
      flightNumber: json['flight_number'],
      airline: Airline.fromJson(json['airline']),
      departureAirport: Airport.fromJson(json['departure_airport']),
      arrivalAirport: Airport.fromJson(json['arrival_airport']),
      departureDatetime: DateTime.parse(json['departure_datetime']),
      arrivalDatetime: DateTime.parse(json['arrival_datetime']),
      basePrice: (json['base_price'] as num).toDouble(),
      availableSeats: json['available_seats'],
    );
  }
}