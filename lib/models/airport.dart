class Airport {
  final String airportCode;
  final String airportName;
  final String city;
  final String country;

  Airport({
    required this.airportCode,
    required this.airportName,
    required this.city,
    required this.country,
  });

  factory Airport.fromJson(Map<String, dynamic> json) {
    return Airport(
      airportCode: json['airport_code'],
      airportName: json['airport_name'],
      city: json['city'],
      country: json['country'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'airport_code': airportCode,
      'airport_name': airportName,
      'city': city,
      'country': country,
    };
  }
}