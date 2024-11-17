import '../database.dart';

class FilesTable extends SupabaseTable<FilesRow> {
  @override
  String get tableName => 'files';

  @override
  FilesRow createRow(Map<String, dynamic> data) => FilesRow(data);
}

class FilesRow extends SupabaseDataRow {
  FilesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FilesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get alternativeText => getField<String>('alternative_text');
  set alternativeText(String? value) =>
      setField<String>('alternative_text', value);

  String? get caption => getField<String>('caption');
  set caption(String? value) => setField<String>('caption', value);

  int? get width => getField<int>('width');
  set width(int? value) => setField<int>('width', value);

  int? get height => getField<int>('height');
  set height(int? value) => setField<int>('height', value);

  dynamic? get formats => getField<dynamic>('formats');
  set formats(dynamic? value) => setField<dynamic>('formats', value);

  String? get hash => getField<String>('hash');
  set hash(String? value) => setField<String>('hash', value);

  String? get ext => getField<String>('ext');
  set ext(String? value) => setField<String>('ext', value);

  String? get mime => getField<String>('mime');
  set mime(String? value) => setField<String>('mime', value);

  double? get size => getField<double>('size');
  set size(double? value) => setField<double>('size', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);

  String? get previewUrl => getField<String>('preview_url');
  set previewUrl(String? value) => setField<String>('preview_url', value);

  String? get provider => getField<String>('provider');
  set provider(String? value) => setField<String>('provider', value);

  dynamic? get providerMetadata => getField<dynamic>('provider_metadata');
  set providerMetadata(dynamic? value) =>
      setField<dynamic>('provider_metadata', value);

  String? get folderPath => getField<String>('folder_path');
  set folderPath(String? value) => setField<String>('folder_path', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);

  String? get blurhash => getField<String>('blurhash');
  set blurhash(String? value) => setField<String>('blurhash', value);
}
