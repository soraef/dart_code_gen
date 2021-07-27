# その２
```dart
import 'package:hello_code_gen/hello_code_gen.dart';

part 'test.g.dart';

@HelloAnno()
class A {
  @HelloField()
  late String a;

  @HelloField()
  late int b;

  @HelloField()
  late List<String> c;

  late bool ignore;
}
```
から@HelloField()がついたフィールドだけを抽出して、新しいクラスを作る
```dart
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// HelloAnnoGenerator
// **************************************************************************

class _A {
  late String a;
  late int b;
  late List<String> c;
}

```