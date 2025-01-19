import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Página Web Responsiva',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Utilizando LayoutBuilder para criar um layout responsivo
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Web Responsiva'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            // Layout para telas pequenas (celular)
            return MobileLayout();
          } else {
            // Layout para telas grandes (desktop)
            return DesktopLayout();
          }
        },
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.blueAccent,
            child: Column(
              children: [
                Icon(Icons.home, size: 50, color: Colors.white),
                SizedBox(height: 10),
                Text(
                  'Bem-vindo à Página Web Responsiva!',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Ação 1'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Ação 2'),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.grey[200],
            child: Column(
              children: [
                Text(
                  'Conteúdo adicional aqui.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                Text('Texto explicativo ou informações'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Barra lateral com navegação
        Container(
          width: 250,
          color: Colors.blueAccent,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Icon(Icons.home, size: 50, color: Colors.white),
              SizedBox(height: 20),
              Text(
                'Bem-vindo à Página Web Responsiva!',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ação 1'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ação 2'),
              ),
            ],
          ),
        ),
        // Conteúdo principal
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      Text(
                        'Conteúdo principal da página',
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Aqui você pode adicionar textos, imagens, vídeos ou qualquer outro tipo de conteúdo.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        'Conteúdo adicional',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Text('Outras informações podem ser colocadas aqui.'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
