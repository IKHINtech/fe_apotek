class ProductDetail {
  String? Id;
  String? productVariantName;
  int? stoct;
  String? price;
  int? ppn;
  int? discount;
  String? barcode;
  String? finalPrice;
  bool? IsActive;
  String? expDate;
  DateTime? CreatedAt;
  DateTime? UpdatedAt;

  ProductDetail({
    this.Id,
    this.price,
    this.ppn,
    this.barcode,
    this.productVariantName,
    this.expDate,
    this.discount,
    this.finalPrice,
    this.stoct,
    this.IsActive,
    this.CreatedAt,
    this.UpdatedAt,
  });

  factory ProductDetail.fromJson(Map<String, dynamic> json) => ProductDetail(
        Id: json["id"],
        productVariantName: json["product_variant_name"],
        CreatedAt: json["created_at"],
        UpdatedAt: json["updated_at"],
        expDate: json["exp_date"],
        stoct: json["stock"],
        price: json["price"],
        ppn: json["ppn"],
        discount: json["dicount"],
        barcode: json["barcode"],
        finalPrice: json["final_price"],
        IsActive: json["is_active"],
      );
}
