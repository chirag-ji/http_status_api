import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_status_api/http_status_api.dart';

void main() {
  const MethodChannel channel = MethodChannel('http_status_api');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await HttpStatusApi.platformVersion, '42');
  });
}
