import '../database.dart';

class SuscriptionsPlanLinksTable
    extends SupabaseTable<SuscriptionsPlanLinksRow> {
  @override
  String get tableName => 'suscriptions_plan_links';

  @override
  SuscriptionsPlanLinksRow createRow(Map<String, dynamic> data) =>
      SuscriptionsPlanLinksRow(data);
}

class SuscriptionsPlanLinksRow extends SupabaseDataRow {
  SuscriptionsPlanLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SuscriptionsPlanLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get suscriptionId => getField<int>('suscription_id');
  set suscriptionId(int? value) => setField<int>('suscription_id', value);

  int? get planId => getField<int>('plan_id');
  set planId(int? value) => setField<int>('plan_id', value);
}
