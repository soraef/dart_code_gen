library hello_code_gen;

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

class HelloAnno {
  const HelloAnno();
}

class HelloField {
  const HelloField();
}

class HelloAnnoGenerator extends GeneratorForAnnotation<HelloAnno> {
  final fieldChecker = TypeChecker.fromRuntime(HelloField);

  @override
  generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final classElement = element as ClassElement;

    List<FieldInfo> fields = [];
    classElement.fields.forEach((field) {
      final myFields = fieldChecker.annotationsOf(field);
      if (myFields.isNotEmpty) {
        final myField = myFields.first;
        final name = field.name;
        final type = field.type.getDisplayString(withNullability: true);
        if (!myField.isNull) {
          fields.add(FieldInfo(name: name, type: type));
        }
      }
    });

    final className = classElement.name;

    String result = "class _$className {";

    fields.forEach((field) {
      result += "late ${field.type} ${field.name};";
    });

    result += "}";
    return result;
  }
}

class FieldInfo {
  final String name;
  final String type;

  FieldInfo({
    required this.name,
    required this.type,
  });
}
