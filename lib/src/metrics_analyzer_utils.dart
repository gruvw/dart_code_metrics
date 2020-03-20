import 'package:analyzer/dart/ast/ast.dart';
import 'package:dart_code_metrics/src/cyclomatic_complexity/models/scoped_declaration.dart';

String getQualifiedName(ScopedDeclaration dec) {
  final declaration = dec.declaration;

  if (declaration is FunctionDeclaration) {
    return declaration.name.toString();
  } else if (declaration is ConstructorDeclaration) {
    return '${dec.declarationIdentifier}.${declaration.name}';
  } else if (declaration is MethodDeclaration) {
    return '${dec.declarationIdentifier}.${declaration.name}';
  }

  return null;
}