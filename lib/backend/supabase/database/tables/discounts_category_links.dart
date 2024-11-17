import '../database.dart';

class DiscountsCategoryLinksTable
    extends SupabaseTable<DiscountsCategoryLinksRow> {
  @override
  String get tableName => 'discounts_category_links';

  @override
  DiscountsCategoryLinksRow createRow(Map<String, dynamic> data) =>
      DiscountsCategoryLinksRow(data);
}

class DiscountsCategoryLinksRow extends SupabaseDataRow {
  DiscountsCategoryLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DiscountsCategoryLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get discountId => getField<int>('discount_id');
  set discountId(int? value) => setField<int>('discount_id', value);

  int? get discountCategoryId => getField<int>('discount_category_id');
  set discountCategoryId(int? value) =>
      setField<int>('discount_category_id', value);
}
