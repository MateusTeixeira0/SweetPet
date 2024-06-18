import 'package:flutter_test/flutter_test.dart';
import 'package:sweetpet/main.dart';
import 'package:sweetpet/screens/home_screen.dart';

void main() {
  testWidgets('Home screen loads correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(SweetPetApp());

    // Verifique se a HomeScreen é exibida corretamente.
    expect(find.byType(HomeScreen), findsOneWidget);
    expect(find.text('SweetPet'), findsOneWidget);

    // Verifique a presença dos itens de animais (depende dos dados mockados).
    expect(find.text('Bella'), findsOneWidget);
    expect(find.text('Milo'), findsOneWidget);
  });
}
