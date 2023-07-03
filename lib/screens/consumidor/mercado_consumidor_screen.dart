import 'package:flutter/material.dart';
import 'package:pockectcheff/screens/consumidor/produto_consumidor_screen.dart';

class MercadoConsumidorScreen extends StatefulWidget {
  const MercadoConsumidorScreen({super.key});

  @override
  State<MercadoConsumidorScreen> createState() => _MercadoConsumidorScreenState();
}

class _MercadoConsumidorScreenState extends State<MercadoConsumidorScreen> {
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
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Ação do carrinho
            },
          ),
        ],
      ),
      backgroundColor: Color(0XFFEDEDED),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right:220),
              child: Text(
                'Seu prato mais verde!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 221, 221, 221),
                hintText: 'Pesquisar',
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 16),
            DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  TabBar(
                     indicatorColor: const Color(0XFF91C788),
                    labelColor: Colors.black,
                    tabs: [
                      Tab(text: 'Frutos'),
                      Tab(text: 'Raízes'),
                      Tab(text: 'Bulbos'),
                      Tab(text: 'Folhas'),
                    ],
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            SizedBox(height: 50,),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,

              child: Row(
                  children: [
                  alimento('tomate', 'Tomate', 'Venda do João', 'R\$10,00 (KG)', context),
                  alimento('berinjela', 'Berinjela', 'Venda do João', 'R\$7,00 (UN)', context),
                  alimento('alface', 'Alface', 'Venda do João', 'R\$2,00 (UN)', context),
                  alimento('beterraba', 'Beterraba', 'Venda do João', 'R\$15,00 (KG)', context),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          setState(() {
          });
        },
        showSelectedLabels: false, 
        showUnselectedLabels: false,
        unselectedItemColor: Color.fromARGB(255, 221, 221, 221),
        selectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Recentes',
          ),
        ],
      ),
    );
  }
}

Widget alimento(String imagem, String titulo, String descricao, String preco, BuildContext context){
  return Padding(
    padding: const EdgeInsets.all(10),
    child: InkWell(
      onTap: () {        
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProdutoConsumidorScreen(imagem: imagem, titulo: titulo, descricao: descricao, preco: preco),
          ),
        );          
      },
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
    ),
  );
}