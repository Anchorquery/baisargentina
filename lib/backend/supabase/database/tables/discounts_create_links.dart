import '../database.dart';

class DiscountsCreateLinksTable extends SupabaseTable<DiscountsCreateLinksRow> {
  @override
  String get tableName => 'discounts_create_links';

  @override
  DiscountsCreateLinksRow createRow(Map<String, dynamic> data) =>
      DiscountsCreateLinksRow(data);
}

class DiscountsCreateLinksRow extends SupabaseDataRow {
  DiscountsCreateLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DiscountsCreateLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get discountId => getField<int>('discount_id');
  set discountId(int? value) => setField<int>('discount_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
