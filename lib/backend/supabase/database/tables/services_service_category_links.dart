import '../database.dart';

class ServicesServiceCategoryLinksTable
    extends SupabaseTable<ServicesServiceCategoryLinksRow> {
  @override
  String get tableName => 'services_service_category_links';

  @override
  ServicesServiceCategoryLinksRow createRow(Map<String, dynamic> data) =>
      ServicesServiceCategoryLinksRow(data);
}

class ServicesServiceCategoryLinksRow extends SupabaseDataRow {
  ServicesServiceCategoryLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServicesServiceCategoryLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get serviceId => getField<int>('service_id');
  set serviceId(int? value) => setField<int>('service_id', value);

  int? get serviceCategoryId => getField<int>('service_category_id');
  set serviceCategoryId(int? value) =>
      setField<int>('service_category_id', value);
}
