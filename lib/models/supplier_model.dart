class Supplier {
  String? Id;
  String? Name;
  String? Address;
  String? Email;
  String? Phone;
  String? City;
  bool? IsActive;
  DateTime? CreatedAt;
  DateTime? UpdatedAt;
  String? CreatedBy;
  String? UpdatedBy;

  Supplier(
      {this.Id,
      this.Name,
      this.Address,
      this.Email,
      this.Phone,
      this.City,
      this.IsActive,
      this.CreatedAt,
      this.UpdatedAt,
      this.CreatedBy,
      this.UpdatedBy});

  factory Supplier.fromJson(Map<String, dynamic> json) => Supplier(
      Id: json['id'],
      Name: json['name'],
      Address: json['address'],
      Email: json['email'],
      Phone: json['phone'],
      City: json['city'],
      IsActive: json['is_active'],
      CreatedAt: json['created_at'],
      UpdatedAt: json['updated_at'],
      UpdatedBy: json['updated_by'],
      CreatedBy: json['created_by']);
}
