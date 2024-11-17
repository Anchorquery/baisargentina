import '../database.dart';

class TransacctionsTable extends SupabaseTable<TransacctionsRow> {
  @override
  String get tableName => 'transacctions';

  @override
  TransacctionsRow createRow(Map<String, dynamic> data) =>
      TransacctionsRow(data);
}

class TransacctionsRow extends SupabaseDataRow {
  TransacctionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransacctionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  dynamic? get rawData => getField<dynamic>('raw_data');
  set rawData(dynamic? value) => setField<dynamic>('raw_data', value);

  int? get itemId => getField<int>('item_id');
  set itemId(int? value) => setField<int>('item_id', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get statusDetail => getField<String>('status_detail');
  set statusDetail(String? value) => setField<String>('status_detail', value);

  String? get externalReference => getField<String>('external_reference');
  set externalReference(String? value) =>
      setField<String>('external_reference', value);

  String? get uuid => getField<String>('uuid');
  set uuid(String? value) => setField<String>('uuid', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  String? get paymentId => getField<String>('payment_id');
  set paymentId(String? value) => setField<String>('payment_id', value);

  String? get lastNumberCard => getField<String>('last_number_card');
  set lastNumberCard(String? value) =>
      setField<String>('last_number_card', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
