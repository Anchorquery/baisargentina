import '../database.dart';

class UpPermissionsTable extends SupabaseTable<UpPermissionsRow> {
  @override
  String get tableName => 'up_permissions';

  @override
  UpPermissionsRow createRow(Map<String, dynamic> data) =>
      UpPermissionsRow(data);
}

class UpPermissionsRow extends SupabaseDataRow {
  UpPermissionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UpPermissionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get action => getField<String>('action');
  set action(String? value) => setField<String>('action', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
