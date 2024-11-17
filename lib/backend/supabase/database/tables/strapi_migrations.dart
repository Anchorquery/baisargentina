import '../database.dart';

class StrapiMigrationsTable extends SupabaseTable<StrapiMigrationsRow> {
  @override
  String get tableName => 'strapi_migrations';

  @override
  StrapiMigrationsRow createRow(Map<String, dynamic> data) =>
      StrapiMigrationsRow(data);
}

class StrapiMigrationsRow extends SupabaseDataRow {
  StrapiMigrationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StrapiMigrationsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  DateTime? get time => getField<DateTime>('time');
  set time(DateTime? value) => setField<DateTime>('time', value);
}
