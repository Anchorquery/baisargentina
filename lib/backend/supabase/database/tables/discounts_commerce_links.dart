import '../database.dart';

class DiscountsCommerceLinksTable
    extends SupabaseTable<DiscountsCommerceLinksRow> {
  @override
  String get tableName => 'discounts_commerce_links';

  @override
  DiscountsCommerceLinksRow createRow(Map<String, dynamic> data) =>
      DiscountsCommerceLinksRow(data);
}

class DiscountsCommerceLinksRow extends SupabaseDataRow {
  DiscountsCommerceLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DiscountsCommerceLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get discountId => getField<int>('discount_id');
  set discountId(int? value) => setField<int>('discount_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
