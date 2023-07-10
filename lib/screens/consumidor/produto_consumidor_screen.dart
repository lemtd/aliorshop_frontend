import 'package:flutter/material.dart';
import 'package:pockectcheff/screens/consumidor/carrinho_consumidor_screen.dart';
class ProdutoConsumidorScreen extends StatelessWidget {
  final String imagem;
  final String titulo;
  final String descricao;
  final String preco;

  const ProdutoConsumidorScreen({required this.imagem, required this.titulo, required this.descricao, required this.preco});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black54, // Defina a cor desejada para o botão de voltar
        ),
        iconTheme: IconThemeData(
          color: Colors.black54, // Defina a cor desejada para os ícones do AppBar
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              // Ação do carrinho
            },
          ),
        ],
      ),
      backgroundColor: Color(0XFFEDEDED),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset(
              'assets/$imagem.png',
              width: 120,
              height: 120,
            ),
            SizedBox(height: 60),
            Text(
              titulo,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              descricao,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 5),
            Text(
              preco,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            // Spacer(),
            SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Rua dos Legumes, N°999, Campo Verde, Natal-RN.',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),  
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Image.asset(
                  'assets/localização.png',
                  width: double.infinity,
                ),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: 300, // Defina o valor desejado para a largura
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CarrinhoConsumidorScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  backgroundColor: const Color(0XFF91C788),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Adicionar ao Carrinho'),
                ),
              ),
            ),            
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

Widget alimento(String imagem, String titulo, String descricao, String preco){
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      padding: EdgeInsets.all(20),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/$imagem.png',
            width: 80,
            height: 80,
          ),
          SizedBox(height: 10),
          Text(
            titulo,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            descricao,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 5),
          Text(
            preco,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    ),
  );
}