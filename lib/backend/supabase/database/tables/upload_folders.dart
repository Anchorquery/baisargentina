import '../database.dart';

class UploadFoldersTable extends SupabaseTable<UploadFoldersRow> {
  @override
  String get tableName => 'upload_folders';

  @override
  UploadFoldersRow createRow(Map<String, dynamic> data) =>
      UploadFoldersRow(data);
}

class UploadFoldersRow extends SupabaseDataRow {
  UploadFoldersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UploadFoldersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get pathId => getField<int>('path_id');
  set pathId(int? value) => setField<int>('path_id', value);

  String? get path => getField<String>('path');
  set path(String? value) => setField<String>('path', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
