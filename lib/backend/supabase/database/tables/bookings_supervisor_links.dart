import '../database.dart';

class BookingsSupervisorLinksTable
    extends SupabaseTable<BookingsSupervisorLinksRow> {
  @override
  String get tableName => 'bookings_supervisor_links';

  @override
  BookingsSupervisorLinksRow createRow(Map<String, dynamic> data) =>
      BookingsSupervisorLinksRow(data);
}

class BookingsSupervisorLinksRow extends SupabaseDataRow {
  BookingsSupervisorLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BookingsSupervisorLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get bookingId => getField<int>('booking_id');
  set bookingId(int? value) => setField<int>('booking_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
