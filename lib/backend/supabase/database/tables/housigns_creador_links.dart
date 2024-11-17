import '../database.dart';

class HousignsCreadorLinksTable extends SupabaseTable<HousignsCreadorLinksRow> {
  @override
  String get tableName => 'housigns_creador_links';

  @override
  HousignsCreadorLinksRow createRow(Map<String, dynamic> data) =>
      HousignsCreadorLinksRow(data);
}

class HousignsCreadorLinksRow extends SupabaseDataRow {
  HousignsCreadorLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HousignsCreadorLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get housignId => getField<int>('housign_id');
  set housignId(int? value) => setField<int>('housign_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
