import '../database.dart';

class FilesFolderLinksTable extends SupabaseTable<FilesFolderLinksRow> {
  @override
  String get tableName => 'files_folder_links';

  @override
  FilesFolderLinksRow createRow(Map<String, dynamic> data) =>
      FilesFolderLinksRow(data);
}

class FilesFolderLinksRow extends SupabaseDataRow {
  FilesFolderLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FilesFolderLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get fileId => getField<int>('file_id');
  set fileId(int? value) => setField<int>('file_id', value);

  int? get folderId => getField<int>('folder_id');
  set folderId(int? value) => setField<int>('folder_id', value);

  double? get fileOrder => getField<double>('file_order');
  set fileOrder(double? value) => setField<double>('file_order', value);
}
