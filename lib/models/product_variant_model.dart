class ProductVariant {
  String? Id;
  String? ProductName;
  String? Category;
  String? UnitName;
  String? SupplierName;
  String? Name;
  bool? IsActive;
  DateTime? CreatedAt;
  DateTime? UpdatedAt;

  ProductVariant({
    this.Id,
    this.ProductName,
    this.Category,
    this.UnitName,
    this.SupplierName,
    this.Name,
    this.IsActive,
    this.CreatedAt,
    this.UpdatedAt,
  });

  factory ProductVariant.fromJson(Map<String, dynamic> json) => ProductVariant(
        Id: json['id'],
        ProductName: json['product_name'],
        Category: json['category'],
        UnitName: json['unit_name'],
        SupplierName: json['supplier_name'],
        Name: json['name'],
        IsActive: json['is_active'],
        CreatedAt: json['created_at'],
        UpdatedAt: json['updated_at'],
      );
}
