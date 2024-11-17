import '../database.dart';

class StrapiDatabaseSchemaTable extends SupabaseTable<StrapiDatabaseSchemaRow> {
  @override
  String get tableName => 'strapi_database_schema';

  @override
  StrapiDatabaseSchemaRow createRow(Map<String, dynamic> data) =>
      StrapiDatabaseSchemaRow(data);
}

class StrapiDatabaseSchemaRow extends SupabaseDataRow {
  StrapiDatabaseSchemaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StrapiDatabaseSchemaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  dynamic? get schema => getField<dynamic>('schema');
  set schema(dynamic? value) => setField<dynamic>('schema', value);

  DateTime? get time => getField<DateTime>('time');
  set time(DateTime? value) => setField<DateTime>('time', value);

  String? get hash => getField<String>('hash');
  set hash(String? value) => setField<String>('hash', value);
}
