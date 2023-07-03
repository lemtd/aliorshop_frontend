import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/profile_picture.png'),
                ),
              ),
              Text(
                'Nome do Usuário',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Endereço de E-mail',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Informações Pessoais'),
                onTap: () {
                  // Navegar para a tela de informações pessoais
                },
              ),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text('Alterar Senha'),
                onTap: () {
                  // Navegar para a tela de alteração de senha
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Sair'),
                onTap: () {
                  // Implementar a lógica para sair do perfil
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfileScreen(),
  ));
}