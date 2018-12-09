import 'package:flutter_test/flutter_test.dart';

import 'package:ago/ago.dart';

void main() {
  // test('adds one to input values', () {
  //   final calculator = Calculator();
  //   expect(calculator.addOne(2), 3);
  //   expect(calculator.addOne(-7), -6);
  //   expect(calculator.addOne(0), 1);
  //   expect(() => calculator.addOne(null), throwsNoSuchMethodError);
  // });

  test('print directly for future date', () {
    var now = DateTime.now();
    var later = now.add(Duration(days: 10));

    expect(ago(now, later), now.toString());
  });

  test('print `just now` when the gap less than five minutes', () {
    var now = DateTime.now();
    var before = now.subtract(Duration(minutes: 3));

    expect(ago(before, now), '刚刚');
  });

  test('print `minutes ago` when the gap more than five minutes and less than one hour', () {
    var now = DateTime.now();
    var before = now.subtract(Duration(minutes: 30));

    expect(ago(before, now), '30 分钟以前');
  });


  test('print `hours ago` when the gap more than one hour and less than one day', () {
    var now = DateTime.now();
    var before = now.subtract(Duration(hours: 2));
    expect(ago(before, now), '2 小时以前');
  });

  test('print full date when the gap more than one day', () {
    var now = DateTime.now();
    var before = now.subtract(Duration(days: 2));

    expect(ago(before, now), before.toString());
  });
}
