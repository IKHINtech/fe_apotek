import 'package:apotek/models/product_model.dart';
import 'package:apotek/models/supplier_model.dart';
import 'package:apotek/models/unit_model.dart';

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

class ProductVariantDetail {
  String? Id;
  String? Name;
  Product? product;
  Supplier? supplier;
  Unit? unit;
  DateTime? CreatedAt;
  DateTime? UpdatedAt;

  ProductVariantDetail({
    this.Id,
    this.Name,
    this.product,
    this.supplier,
    this.unit,
    this.CreatedAt,
    this.UpdatedAt,
  });

  factory ProductVariantDetail.fromJson(Map<String, dynamic> json) =>
      ProductVariantDetail(
        Id: json['id'],
        Name: json['name'],
        product:
            json['product'] == null ? null : Product.fromJson(json['procuct']),
        supplier: json['supplier'] == null
            ? null
            : Supplier.fromJson(json['supplier']),
        unit: json['unit'] == null ? null : Unit.fromJson(json['unit']),
        CreatedAt: json['created_at'],
        UpdatedAt: json['updated_at'],
      );
}
