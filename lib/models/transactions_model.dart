class TransactionsModel {
  final String profile;
  final String title;
  final bool transer;
  final String price;
  final String date;

  TransactionsModel({
    required this.profile,
    required this.title,
    required this.transer,
    required this.price,
    required this.date,
  });

  factory TransactionsModel.fromJson(Map<String, dynamic> json) {
    return TransactionsModel(
      profile: json['profile'] ?? '',
      title: json['title'] ?? '',
      transer: json['transfer'] ?? false, 
      price: json['price'] ?? '',
      date: json['date'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'profile': profile,
      'title': title,
      'transer': transer,
      'price': price,
      'date': date,
    };
  }
}
