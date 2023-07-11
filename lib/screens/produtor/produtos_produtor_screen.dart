import 'package:flutter/material.dart';
import 'package:pockectcheff/screens/produtor/register_alimento_screen.dart';

class ProdutosProdutorScreen extends StatefulWidget {
  const ProdutosProdutorScreen({super.key});

  @override
  State<ProdutosProdutorScreen> createState() => _ProdutosProdutorScreenState();
}

class _ProdutosProdutorScreenState extends State<ProdutosProdutorScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  bool _passwordObscure = true;
  bool _confirmPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0XFFEDEDED),),
      backgroundColor: Color(0XFFEDEDED),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          10,
          0,
          10,
          0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Alinhamento horizontal no início
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Produtos da Loja',
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: SingleChildScrollView(
                      child: Wrap(
                        children: [
                          alimento('tomate', 'Tomate', 'Venda do João', 'R\$10,00 (KG)', context),
                          alimento('berinjela', 'Berinjela', 'Venda do João', 'R\$7,00 (UN)', context),
                          alimento('alface', 'Alface', 'Venda do João', 'R\$2,00 (UN)', context),
                          alimento('beterraba', 'Beterraba', 'Venda do João', 'R\$15,00 (KG)', context),
                          alimento('tomate', 'Tomate', 'Horta Green', 'R\$12,00 (KG)', context),
                          alimento('berinjela', 'Berinjela', 'Horta Green', 'R\$10,00 (UN)', context),
                          alimento('alface', 'Alface', 'Horta Green', 'R\$5,00 (UN)', context),
                          alimento('beterraba', 'Beterraba', 'Horta Green', 'R\$20,00 (KG)', context),
                          alimento('tomate', 'Tomate', 'Horta Green', 'R\$12,00 (KG)', context),
                          alimento('berinjela', 'Berinjela', 'Horta Green', 'R\$10,00 (UN)', context),
                          alimento('alface', 'Alface', 'Horta Green', 'R\$5,00 (UN)', context),
                          alimento('beterraba', 'Beterraba', 'Horta Green', 'R\$20,00 (KG)', context),
                          alimento('tomate', 'Tomate', 'Horta Green', 'R\$12,00 (KG)', context),
                          alimento('berinjela', 'Berinjela', 'Horta Green', 'R\$10,00 (UN)', context),
                          alimento('alface', 'Alface', 'Horta Green', 'R\$5,00 (UN)', context),
                          alimento('beterraba', 'Beterraba', 'Horta Green', 'R\$20,00 (KG)', context),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),    
            SizedBox(height: 10,),
            Center(
              child: SizedBox(
                width: 300, // Defina o valor desejado para a largura
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterAlimentoScreen(),
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
                    child: Text('Adicionar Produto'),
                  ),
                ),
              ),
            ),                 
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}


Widget alimento(String imagem, String titulo, String descricao, String preco, BuildContext context){
  return Padding(
    padding: const EdgeInsets.all(10),
    child: InkWell(
      onTap: () {        
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => ProdutoConsumidorScreen(imagem: imagem, titulo: titulo, descricao: descricao, preco: preco),
        //   ),
        // );          
      },
      child: Container(
        padding: EdgeInsets.all(0),
        width: 160,
        height: 180,
        decoration: BoxDecoration(
          color: Color.fromARGB(31, 223, 223, 223),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Wrap(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/$imagem.png',
                    width: 70,
                    height: 70,
                  ),
                  SizedBox(height: 10),
                  Text(
                    titulo,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    descricao,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    preco,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.edit, color: Color.fromARGB(255, 0, 58, 106),),
              ),
            )
          ],
        ),
      ),
    ),
  );
}