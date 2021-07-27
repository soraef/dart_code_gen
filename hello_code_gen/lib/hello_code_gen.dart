library hello_code_gen;

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

class HelloAnno {
  const HelloAnno();
}

class HelloAnnoGenerator extends GeneratorForAnnotation<HelloAnno> {
  @override
  generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    return "class Hello {}";
  }
}
