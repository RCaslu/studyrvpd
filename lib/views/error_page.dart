import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/500.png'),
                      SizedBox(height: 32),
                      Text('Algo deu errado por aqui'),
                      Text(
                        'Ocorreu um erro em nosso servidor. Não se preocupe, já estamos trabalhando para resolver.',
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
                      SizedBox(height: 16),
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
