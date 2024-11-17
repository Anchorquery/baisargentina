import '../database.dart';

class StrapiCoreStoreSettingsTable
    extends SupabaseTable<StrapiCoreStoreSettingsRow> {
  @override
  String get tableName => 'strapi_core_store_settings';

  @override
  StrapiCoreStoreSettingsRow createRow(Map<String, dynamic> data) =>
      StrapiCoreStoreSettingsRow(data);
}

class StrapiCoreStoreSettingsRow extends SupabaseDataRow {
  StrapiCoreStoreSettingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StrapiCoreStoreSettingsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get key => getField<String>('key');
  set key(String? value) => setField<String>('key', value);

  String? get value => getField<String>('value');
  set value(String? value) => setField<String>('value', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get environment => getField<String>('environment');
  set environment(String? value) => setField<String>('environment', value);

  String? get tag => getField<String>('tag');
  set tag(String? value) => setField<String>('tag', value);
}
