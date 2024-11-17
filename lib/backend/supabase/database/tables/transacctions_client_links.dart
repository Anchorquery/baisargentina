import '../database.dart';

class TransacctionsClientLinksTable
    extends SupabaseTable<TransacctionsClientLinksRow> {
  @override
  String get tableName => 'transacctions_client_links';

  @override
  TransacctionsClientLinksRow createRow(Map<String, dynamic> data) =>
      TransacctionsClientLinksRow(data);
}

class TransacctionsClientLinksRow extends SupabaseDataRow {
  TransacctionsClientLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransacctionsClientLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get transacctionId => getField<int>('transacction_id');
  set transacctionId(int? value) => setField<int>('transacction_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
