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
