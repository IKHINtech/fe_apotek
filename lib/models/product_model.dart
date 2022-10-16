import 'package:apotek/models/category_models.dart';

class Product {
  String? Id;
  String? Name;
  bool? IsActive;
  DateTime? CreatedAt;
  DateTime? UpdatedAt;
  Category? category;

  Product({
    this.Id,
    this.Name,
    this.IsActive,
    this.CreatedAt,
    this.UpdatedAt,
    this.category,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        Id: json["id"],
        category: json["category"] == null
            ? null
            : Category.fromJson(json["category"]),
        CreatedAt: DateTime.parse(json["created_at"]),
        UpdatedAt: DateTime.parse(json["updated_at"]),
        Name: json["name"],
        IsActive: json["is_active"],
      );

  Map<String, dynamic> toJson() => {
        "id": Id,
        "category": category == null ? null : category?.toJson(),
        "created_at": CreatedAt?.toIso8601String(),
        "updated_at": UpdatedAt?.toIso8601String(),
        "name": Name,
        "is_active": IsActive,
      };
}
