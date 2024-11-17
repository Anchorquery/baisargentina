import '../database.dart';

class ServicesCreatedLinksTable extends SupabaseTable<ServicesCreatedLinksRow> {
  @override
  String get tableName => 'services_created_links';

  @override
  ServicesCreatedLinksRow createRow(Map<String, dynamic> data) =>
      ServicesCreatedLinksRow(data);
}

class ServicesCreatedLinksRow extends SupabaseDataRow {
  ServicesCreatedLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServicesCreatedLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get serviceId => getField<int>('service_id');
  set serviceId(int? value) => setField<int>('service_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
