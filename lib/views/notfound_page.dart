import 'package:flutter/material.dart';

class NotfoundPage extends StatelessWidget {
  const NotfoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Voltar button at the top
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.arrow_back, color: Colors.black, size: 30),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/404.png'),
                      SizedBox(height: 32),
                      Text('Ops! Página não encontrada.'),
                      Text(
                        'A pagina que você tentou acessar não existe ou foi movida.',
                      ),
                      SizedBox(height: 32),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.blueAccent,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/');
                        },
                        child: Text('Voltar para a página inicial'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
