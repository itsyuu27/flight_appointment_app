class Airline {
  final int airlineId;
  final String airlineName;
  final String airlineCode;

  Airline({
    required this.airlineId,
    required this.airlineName,
    required this.airlineCode,
  });

  factory Airline.fromJson(Map<String, dynamic> json) {
    return Airline(
      airlineId: json['airline_id'],
      airlineName: json['airline_name'],
      airlineCode: json['airline_code'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'airline_id': airlineId,
      'airline_name': airlineName,
      'airline_code': airlineCode,
    };
  }
}