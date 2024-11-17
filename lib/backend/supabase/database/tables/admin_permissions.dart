import '../database.dart';

class AdminPermissionsTable extends SupabaseTable<AdminPermissionsRow> {
  @override
  String get tableName => 'admin_permissions';

  @override
  AdminPermissionsRow createRow(Map<String, dynamic> data) =>
      AdminPermissionsRow(data);
}

class AdminPermissionsRow extends SupabaseDataRow {
  AdminPermissionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdminPermissionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get action => getField<String>('action');
  set action(String? value) => setField<String>('action', value);

  dynamic? get actionParameters => getField<dynamic>('action_parameters');
  set actionParameters(dynamic? value) =>
      setField<dynamic>('action_parameters', value);

  String? get subject => getField<String>('subject');
  set subject(String? value) => setField<String>('subject', value);

  dynamic? get properties => getField<dynamic>('properties');
  set properties(dynamic? value) => setField<dynamic>('properties', value);

  dynamic? get conditions => getField<dynamic>('conditions');
  set conditions(dynamic? value) => setField<dynamic>('conditions', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
