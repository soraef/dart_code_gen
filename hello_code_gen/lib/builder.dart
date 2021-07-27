import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'hello_code_gen.dart';

Builder helloBuilder(BuilderOptions _) =>
    SharedPartBuilder([HelloAnnoGenerator()], "hello");
