import '../database.dart';

class UploadFoldersParentLinksTable
    extends SupabaseTable<UploadFoldersParentLinksRow> {
  @override
  String get tableName => 'upload_folders_parent_links';

  @override
  UploadFoldersParentLinksRow createRow(Map<String, dynamic> data) =>
      UploadFoldersParentLinksRow(data);
}

class UploadFoldersParentLinksRow extends SupabaseDataRow {
  UploadFoldersParentLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UploadFoldersParentLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get folderId => getField<int>('folder_id');
  set folderId(int? value) => setField<int>('folder_id', value);

  int? get invFolderId => getField<int>('inv_folder_id');
  set invFolderId(int? value) => setField<int>('inv_folder_id', value);

  double? get folderOrder => getField<double>('folder_order');
  set folderOrder(double? value) => setField<double>('folder_order', value);
}
