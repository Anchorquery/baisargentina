import '../database.dart';

class StrapiReleaseActionsTable extends SupabaseTable<StrapiReleaseActionsRow> {
  @override
  String get tableName => 'strapi_release_actions';

  @override
  StrapiReleaseActionsRow createRow(Map<String, dynamic> data) =>
      StrapiReleaseActionsRow(data);
}

class StrapiReleaseActionsRow extends SupabaseDataRow {
  StrapiReleaseActionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StrapiReleaseActionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  int? get targetId => getField<int>('target_id');
  set targetId(int? value) => setField<int>('target_id', value);

  String? get targetType => getField<String>('target_type');
  set targetType(String? value) => setField<String>('target_type', value);

  String? get contentType => getField<String>('content_type');
  set contentType(String? value) => setField<String>('content_type', value);

  String? get locale => getField<String>('locale');
  set locale(String? value) => setField<String>('locale', value);

  bool? get isEntryValid => getField<bool>('is_entry_valid');
  set isEntryValid(bool? value) => setField<bool>('is_entry_valid', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
