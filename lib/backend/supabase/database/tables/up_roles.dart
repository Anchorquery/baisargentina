import '../database.dart';

class UpRolesTable extends SupabaseTable<UpRolesRow> {
  @override
  String get tableName => 'up_roles';

  @override
  UpRolesRow createRow(Map<String, dynamic> data) => UpRolesRow(data);
}

class UpRolesRow extends SupabaseDataRow {
  UpRolesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UpRolesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
