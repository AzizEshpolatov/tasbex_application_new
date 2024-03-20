class ZikrModel {
  final String name;
  final int count;
  final int? id;

  ZikrModel(
      {
        this.id,
        required this.name,
        required this.count,
      });

  factory ZikrModel.fromJson(Map<String, dynamic> json) {
    return ZikrModel(
      id: json['_id'] as int? ?? 0,
      name: json['name'] as String? ?? "",
      count: json['count'] as int? ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'count': count,
    };
  }

  ZikrModel copyWith({
    String? name,
    int? count,
    int? id,
  }) {
    return ZikrModel(
      name: name ?? this.name,
      count: count ?? this.count,
      id: id,
    );
  }
}
