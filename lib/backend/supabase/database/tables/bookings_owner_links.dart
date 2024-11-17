import '../database.dart';

class BookingsOwnerLinksTable extends SupabaseTable<BookingsOwnerLinksRow> {
  @override
  String get tableName => 'bookings_owner_links';

  @override
  BookingsOwnerLinksRow createRow(Map<String, dynamic> data) =>
      BookingsOwnerLinksRow(data);
}

class BookingsOwnerLinksRow extends SupabaseDataRow {
  BookingsOwnerLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BookingsOwnerLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get bookingId => getField<int>('booking_id');
  set bookingId(int? value) => setField<int>('booking_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
