import '../database.dart';

class BookingsTable extends SupabaseTable<BookingsRow> {
  @override
  String get tableName => 'bookings';

  @override
  BookingsRow createRow(Map<String, dynamic> data) => BookingsRow(data);
}

class BookingsRow extends SupabaseDataRow {
  BookingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BookingsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get uuid => getField<String>('uuid');
  set uuid(String? value) => setField<String>('uuid', value);

  DateTime? get dateCreated => getField<DateTime>('date_created');
  set dateCreated(DateTime? value) => setField<DateTime>('date_created', value);

  String? get qrCode => getField<String>('qr_code');
  set qrCode(String? value) => setField<String>('qr_code', value);

  DateTime? get verficationDate => getField<DateTime>('verfication_date');
  set verficationDate(DateTime? value) =>
      setField<DateTime>('verfication_date', value);

  DateTime? get errorDate => getField<DateTime>('error_date');
  set errorDate(DateTime? value) => setField<DateTime>('error_date', value);

  int? get ref => getField<int>('ref');
  set ref(int? value) => setField<int>('ref', value);

  String? get encryptedData => getField<String>('encrypted_data');
  set encryptedData(String? value) => setField<String>('encrypted_data', value);

  String? get encryptedKey => getField<String>('encrypted_key');
  set encryptedKey(String? value) => setField<String>('encrypted_key', value);

  String? get iv => getField<String>('iv');
  set iv(String? value) => setField<String>('iv', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
