import 'package:balbina/db/Counter.dart';
import 'package:balbina/db/Product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    List<Product> lista = context.watch<Counter>().listaCart;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 1,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 214, 214, 214),
                blurRadius: 5,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            color: Colors.transparent, // Remova a cor de fundo
            margin:
                EdgeInsets.only(left: 10, right: 10), // Adicione margem interna
            child: const TextField(
              style: TextStyle(
                  fontSize: 16), // Aumente o tamanho da fonte do texto
              decoration: InputDecoration(
                hintText: 'Pesquisar...',
                hintStyle: TextStyle(
                    fontSize:
                        16), // Aumente o tamanho da fonte do texto de dica
                icon: Icon(
                  Icons.search,
                  size: 30, // Aumente o tamanho do ícone de pesquisa
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "My Cart",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 1,
                child: ElevatedButton(
                    onPressed: () {}, child: Text("Continue payment"))),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.width * 0.8,
              decoration: const BoxDecoration(
                  color: const Color.fromARGB(255, 226, 226, 226),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: ListView.builder(
                itemCount: lista.length,
                itemBuilder: (context, index) {
                  return 
                  
                  lista[index].name.isEmpty ? Container():
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1,
                        child:  ListTile(
                          trailing: Icon(Icons.check),
                          title: Text(" ${lista[index].name} "),
                          subtitle: Text("Qtd: ${lista[index].qtda.toString()}"),
                        ),
                      ),
                      const Divider(height: 0),
                    ],
                  );
                },
              ),
            ),
          ]),
        ),
      )),
    );
  }
}
