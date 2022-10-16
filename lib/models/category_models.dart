class Category {
  String? Id;
  String? Name;
  String? Description;
  bool? IsActive;
  DateTime? CreatedAt;
  DateTime? UpdatedAt;

  Category({
    this.Id,
    this.Name,
    this.Description,
    this.IsActive,
    this.CreatedAt,
    this.UpdatedAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        Id: json['id'],
        Name: json['name'],
        Description: json['description'],
        IsActive: json['is_active'],
        CreatedAt: json['created_at'],
        UpdatedAt: json['updated_at'],
      );

  Map<String, dynamic> toJson() => {
        "id": Id,
        "name": Name,
        "description": Description,
        "is_active": IsActive,
        "created_at": CreatedAt,
        "updated_at": UpdatedAt
      };
}
