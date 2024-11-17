import '../database.dart';

class ServiceCategoriesTable extends SupabaseTable<ServiceCategoriesRow> {
  @override
  String get tableName => 'service_categories';

  @override
  ServiceCategoriesRow createRow(Map<String, dynamic> data) =>
      ServiceCategoriesRow(data);
}

class ServiceCategoriesRow extends SupabaseDataRow {
  ServiceCategoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServiceCategoriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
