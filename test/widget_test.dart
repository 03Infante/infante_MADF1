// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:student_registration_app/main.dart';

void main() {
  testWidgets('Home screen opens successfully', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const StudentApp());

    // Verify that our counter starts at 0.
    expect(find.text('Student Application'), findsOneWidget);
    expect(find.text('Open Registration Screen'), findsOneWidget);
    expect(find.byType(TextField), findsOneWidget);
  });
  
  testWidgets('Registration navigation works',
  (WidgetTester tester) async {
    await tester.pumpWidget(const StudentApp());
    await tester.tap(find.text('Open Registration Screen'));
    await tester.pumpAndSettle();
    expect(find.text('Student Registration'), findsOneWidget);
    expect(find.text('Register Student'), findsOneWidget);
  });
}
flutter test