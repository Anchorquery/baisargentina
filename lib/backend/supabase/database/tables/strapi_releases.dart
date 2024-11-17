import '../database.dart';

class StrapiReleasesTable extends SupabaseTable<StrapiReleasesRow> {
  @override
  String get tableName => 'strapi_releases';

  @override
  StrapiReleasesRow createRow(Map<String, dynamic> data) =>
      StrapiReleasesRow(data);
}

class StrapiReleasesRow extends SupabaseDataRow {
  StrapiReleasesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StrapiReleasesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  DateTime? get releasedAt => getField<DateTime>('released_at');
  set releasedAt(DateTime? value) => setField<DateTime>('released_at', value);

  DateTime? get scheduledAt => getField<DateTime>('scheduled_at');
  set scheduledAt(DateTime? value) => setField<DateTime>('scheduled_at', value);

  String? get timezone => getField<String>('timezone');
  set timezone(String? value) => setField<String>('timezone', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
