import 'package:stripe/src/client.dart';
import 'package:test/test.dart';

void main() {
  group('form data encoding', () {
    test('encodes form data correctly', () async {
      var map = <String, dynamic>{
        'foo': ['bar1', 'bar2', 1],
        'bar': {'x': 2, 'y': true}
      };

      expect(fixMap(map), {
        'foo[0]': 'bar1',
        'foo[1]': 'bar2',
        'foo[2]': '1',
        'bar[x]': '2',
        'bar[y]': 'true',
      });
    });

    test('goes through map recursively', () async {
      var map = <String, dynamic>{
        'foo': [
          'bar1',
          {
            'bar2': ['bb1', 'bb2']
          }
        ]
      };
      expect(fixMap(map), {
        'foo[0]': 'bar1',
        'foo[1][bar2][0]': 'bb1',
        'foo[1][bar2][1]': 'bb2',
      });
    });
  });
}
