class AssetModel {
  final String profile;
  final String title;
  final String subtitle;
  final String ratio;

  AssetModel({
    required this.profile,
    required this.title,
    required this.subtitle,
    required this.ratio,
  });

  factory AssetModel.fromJson(Map<String, dynamic> json) {
    return AssetModel(
      profile: json['profile'],
      title: json['title'],
      subtitle: json['subtitle'],
      ratio: json['ratio'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'profile': profile,
      'title': title,
      'subtitle': subtitle,
      'ratio': ratio,
    };
  }
}
