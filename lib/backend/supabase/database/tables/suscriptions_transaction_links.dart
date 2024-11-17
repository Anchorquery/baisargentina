import '../database.dart';

class SuscriptionsTransactionLinksTable
    extends SupabaseTable<SuscriptionsTransactionLinksRow> {
  @override
  String get tableName => 'suscriptions_transaction_links';

  @override
  SuscriptionsTransactionLinksRow createRow(Map<String, dynamic> data) =>
      SuscriptionsTransactionLinksRow(data);
}

class SuscriptionsTransactionLinksRow extends SupabaseDataRow {
  SuscriptionsTransactionLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SuscriptionsTransactionLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get suscriptionId => getField<int>('suscription_id');
  set suscriptionId(int? value) => setField<int>('suscription_id', value);

  int? get transacctionId => getField<int>('transacction_id');
  set transacctionId(int? value) => setField<int>('transacction_id', value);
}
