# とりあえず生成してみる
```dart
import 'package:hello_code_gen/hello_code_gen.dart';

part 'test.g.dart';

@HelloAnno()
class A {}
```

から

```dart
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// HelloAnnoGenerator
// **************************************************************************

class Hello {}
```