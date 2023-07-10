import 'package:flutter/material.dart';
class CarrinhoConsumidorScreen extends StatelessWidget {

  const CarrinhoConsumidorScreen();
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
      ),
      backgroundColor: Color(0XFFEDEDED),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    alimento('tomate', 'Tomate', 'Venda do João', 'R\$10,00 (KG)'),
                    alimento('berinjela', 'Berinjela', 'Venda do João', 'R\$7,00 (UN)'),
                    alimento('alface', 'Alface', 'Venda do João', 'R\$2,00 (UN)'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Endereço de retirada',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ), 
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Rua dos Legumes, N°999, Campo Verde, Natal-RN.',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ), 
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                width: double.infinity, // Defina o valor desejado para a largura
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: const Color(0XFF91C788),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text('Enviar para o produtor preparar'),
                  ),
                ),
              ),
            ),            
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

Widget alimento(String imagem, String titulo, String descricao, String preco){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    child: Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/$imagem.png',
            width: 80,
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  preco,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0XFF91C788),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(          
              decoration: BoxDecoration(    
                  color: const Color(0XFF91C788),
                  borderRadius: BorderRadius.circular(20),                  
                ),
              height: 20,
              width: 55,
              child: Center(child: Text('-  1  +', style: TextStyle(color: Colors.white),)),
            ),
          )
        ],
      ),
    ),
  );
}