import '../database.dart';

class EmailTemplatesTable extends SupabaseTable<EmailTemplatesRow> {
  @override
  String get tableName => 'email_templates';

  @override
  EmailTemplatesRow createRow(Map<String, dynamic> data) =>
      EmailTemplatesRow(data);
}

class EmailTemplatesRow extends SupabaseDataRow {
  EmailTemplatesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmailTemplatesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get templateReferenceId => getField<int>('template_reference_id');
  set templateReferenceId(int? value) =>
      setField<int>('template_reference_id', value);

  dynamic? get design => getField<dynamic>('design');
  set design(dynamic? value) => setField<dynamic>('design', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get subject => getField<String>('subject');
  set subject(String? value) => setField<String>('subject', value);

  String? get bodyHtml => getField<String>('body_html');
  set bodyHtml(String? value) => setField<String>('body_html', value);

  String? get bodyText => getField<String>('body_text');
  set bodyText(String? value) => setField<String>('body_text', value);

  bool? get enabled => getField<bool>('enabled');
  set enabled(bool? value) => setField<bool>('enabled', value);

  dynamic? get tags => getField<dynamic>('tags');
  set tags(dynamic? value) => setField<dynamic>('tags', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
