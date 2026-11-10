// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:frases_app/screens/formulario_screen.dart';

void main() {
  testWidgets('El formulario valida los campos obligatorios', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: FormularioScreen()));

    expect(find.text('Nueva frase'), findsOneWidget);
    await tester.tap(find.text('Guardar frase'));
    await tester.pump();
    expect(find.text('Escribe al menos 5 caracteres'), findsOneWidget);
    expect(find.text('Escribe el autor'), findsOneWidget);
  });
}
