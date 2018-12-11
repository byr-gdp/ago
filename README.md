# ago

A new Flutter package project for displaying fuzzy time.

## Usage

```dart
import 'package:ago/ago.dart';
var justNow = DateTime.now().subtract(Duration(minutes: 3));
ago(justNow); // 刚刚
```

## Test

Run `flutter test` in the terminal.

## Publish

- Remember to update version.
- Run `pub publish --dry-run`.
- If no warnings or erros，remove `--dry-run` and execute `pub publish`.

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
