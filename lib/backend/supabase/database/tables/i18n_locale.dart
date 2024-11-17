import '../database.dart';

class I18nLocaleTable extends SupabaseTable<I18nLocaleRow> {
  @override
  String get tableName => 'i18n_locale';

  @override
  I18nLocaleRow createRow(Map<String, dynamic> data) => I18nLocaleRow(data);
}

class I18nLocaleRow extends SupabaseDataRow {
  I18nLocaleRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => I18nLocaleTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
