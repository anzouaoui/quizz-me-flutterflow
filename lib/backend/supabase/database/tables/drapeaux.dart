import '../database.dart';

class DrapeauxTable extends SupabaseTable<DrapeauxRow> {
  @override
  String get tableName => 'Drapeaux';

  @override
  DrapeauxRow createRow(Map<String, dynamic> data) => DrapeauxRow(data);
}

class DrapeauxRow extends SupabaseDataRow {
  DrapeauxRow(super.data);

  @override
  SupabaseTable get table => DrapeauxTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get dreapux => getField<String>('dreapux')!;
  set dreapux(String value) => setField<String>('dreapux', value);
}
