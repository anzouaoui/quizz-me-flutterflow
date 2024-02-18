import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://qojimpsletdorxkuqcoo.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFvamltcHNsZXRkb3J4a3VxY29vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDc2NDAxNzcsImV4cCI6MjAyMzIxNjE3N30.gfaPI_YsrGxxGQ4LMWFjLp3hOWPW-wieXDT6iPXGV6E';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
