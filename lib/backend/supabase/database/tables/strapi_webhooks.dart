import '../database.dart';

class StrapiWebhooksTable extends SupabaseTable<StrapiWebhooksRow> {
  @override
  String get tableName => 'strapi_webhooks';

  @override
  StrapiWebhooksRow createRow(Map<String, dynamic> data) =>
      StrapiWebhooksRow(data);
}

class StrapiWebhooksRow extends SupabaseDataRow {
  StrapiWebhooksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StrapiWebhooksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);

  dynamic? get headers => getField<dynamic>('headers');
  set headers(dynamic? value) => setField<dynamic>('headers', value);

  dynamic? get events => getField<dynamic>('events');
  set events(dynamic? value) => setField<dynamic>('events', value);

  bool? get enabled => getField<bool>('enabled');
  set enabled(bool? value) => setField<bool>('enabled', value);
}
