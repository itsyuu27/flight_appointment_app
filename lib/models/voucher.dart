class Voucher {
  final int voucherId;
  final String voucherCode;
  final String discountType;
  final double discountValue;
  final DateTime expiryDate;
  final bool isActive;

  Voucher({
    required this.voucherId,
    required this.voucherCode,
    required this.discountType,
    required this.discountValue,
    required this.expiryDate,
    required this.isActive,
  });

  factory Voucher.fromJson(Map<String, dynamic> json) {
    return Voucher(
      voucherId: json['voucher_id'],
      voucherCode: json['voucher_code'],
      discountType: json['discount_type'],
      discountValue: (json['discount_value'] as num).toDouble(),
      expiryDate: DateTime.parse(json['expiry_date']),
      isActive: json['is_active'] == 1 || json['is_active'] == true,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'voucher_id': voucherId,
      'voucher_code': voucherCode,
      'discount_type': discountType,
      'discount_value': discountValue,
      'expiry_date': expiryDate.toIso8601String(),
      'is_active': isActive,
    };
  }
}