import 'package:flutter/material.dart';

class TelaExemplo extends StatelessWidget {
  const TelaExemplo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela de Exemplo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bem-vindo à Tela de Exemplo',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              key: const Key('botao_navegar'),
              child: const Text('Navegar para a outra tela'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OutraTela()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class OutraTela extends StatelessWidget {
  const OutraTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Outra Tela'),
      ),
      body: const Center(
        child: Text(
          'Esta é a Outra Tela',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
