import '../lib/ago.dart';

void main() {
  var justNow = DateTime.now().subtract(Duration(minutes: 3));
  print(ago(justNow)); // 刚刚
}

