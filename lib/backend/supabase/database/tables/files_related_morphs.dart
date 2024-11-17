import '../database.dart';

class FilesRelatedMorphsTable extends SupabaseTable<FilesRelatedMorphsRow> {
  @override
  String get tableName => 'files_related_morphs';

  @override
  FilesRelatedMorphsRow createRow(Map<String, dynamic> data) =>
      FilesRelatedMorphsRow(data);
}

class FilesRelatedMorphsRow extends SupabaseDataRow {
  FilesRelatedMorphsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FilesRelatedMorphsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get fileId => getField<int>('file_id');
  set fileId(int? value) => setField<int>('file_id', value);

  int? get relatedId => getField<int>('related_id');
  set relatedId(int? value) => setField<int>('related_id', value);

  String? get relatedType => getField<String>('related_type');
  set relatedType(String? value) => setField<String>('related_type', value);

  String? get field => getField<String>('field');
  set field(String? value) => setField<String>('field', value);

  double? get order => getField<double>('order');
  set order(double? value) => setField<double>('order', value);
}
