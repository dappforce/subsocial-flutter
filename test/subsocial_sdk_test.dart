import 'package:flutter_test/flutter_test.dart';
import 'package:subsocial_sdk/subsocial_sdk.dart';

void main() {
  test('Get Space with Id', () async {
    final sdk = await Subsocial.instance;
    final space = await sdk.spaceById(1);
    expect(space.handle, "subsocial");
  });
}
