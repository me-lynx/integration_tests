import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_tests/main.dart';

void main() {
  testWidgets('Teste de integração da Tela de Exemplo',
      (WidgetTester tester) async {
    // Constrói a tela de exemplo
    await tester.pumpWidget(const MyApp());

    // Localiza o botão de navegação pelo valor da chave
    final botaoNavegar = find.byKey(const Key('botao_navegar'));

    // Verifica se o botão de navegação está visível
    expect(botaoNavegar, findsOneWidget);

    // Toca no botão de navegação
    await tester.tap(botaoNavegar);

    // Aguarda a reconstrução da árvore de widgets
    await tester.pumpAndSettle();

    // Verifica se a outra tela foi carregada
    expect(find.text('Esta é a Outra Tela'), findsOneWidget);
  });
}
