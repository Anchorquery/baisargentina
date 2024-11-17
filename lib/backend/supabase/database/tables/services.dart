import '../database.dart';

class ServicesTable extends SupabaseTable<ServicesRow> {
  @override
  String get tableName => 'services';

  @override
  ServicesRow createRow(Map<String, dynamic> data) => ServicesRow(data);
}

class ServicesRow extends SupabaseDataRow {
  ServicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServicesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  bool? get state => getField<bool>('state');
  set state(bool? value) => setField<bool>('state', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get contactUrl => getField<String>('contact_url');
  set contactUrl(String? value) => setField<String>('contact_url', value);

  String? get caption => getField<String>('caption');
  set caption(String? value) => setField<String>('caption', value);

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
