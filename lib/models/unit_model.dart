class Unit {
  String? Id;
  String? Name;
  bool? IsActive;
  DateTime? CreatedAt;
  DateTime? UpdatedAt;

  Unit({
    this.Id,
    this.Name,
    this.IsActive,
    this.CreatedAt,
    this.UpdatedAt,
  });

  factory Unit.fromJson(Map<String, dynamic> json) => Unit(
        Id: json['id'],
        Name: json['name'],
        IsActive: json['is_active'],
        CreatedAt: json['created_at'],
        UpdatedAt: json['updated_at'],
      );

  Map<String, dynamic> toJson() => {
        "id": Id,
        "name": Name,
        "is_active": IsActive,
        "created_at": CreatedAt,
        "updated_at": UpdatedAt
      };
}
