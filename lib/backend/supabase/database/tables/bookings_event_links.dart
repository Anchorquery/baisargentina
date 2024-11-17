import '../database.dart';

class BookingsEventLinksTable extends SupabaseTable<BookingsEventLinksRow> {
  @override
  String get tableName => 'bookings_event_links';

  @override
  BookingsEventLinksRow createRow(Map<String, dynamic> data) =>
      BookingsEventLinksRow(data);
}

class BookingsEventLinksRow extends SupabaseDataRow {
  BookingsEventLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BookingsEventLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get bookingId => getField<int>('booking_id');
  set bookingId(int? value) => setField<int>('booking_id', value);

  int? get eventId => getField<int>('event_id');
  set eventId(int? value) => setField<int>('event_id', value);
}
