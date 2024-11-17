import '../database.dart';

class SuscriptionsSuscriptorLinksTable
    extends SupabaseTable<SuscriptionsSuscriptorLinksRow> {
  @override
  String get tableName => 'suscriptions_suscriptor_links';

  @override
  SuscriptionsSuscriptorLinksRow createRow(Map<String, dynamic> data) =>
      SuscriptionsSuscriptorLinksRow(data);
}

class SuscriptionsSuscriptorLinksRow extends SupabaseDataRow {
  SuscriptionsSuscriptorLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SuscriptionsSuscriptorLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get suscriptionId => getField<int>('suscription_id');
  set suscriptionId(int? value) => setField<int>('suscription_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
