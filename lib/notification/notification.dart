import 'package:balbina/componente/stepper.dart';
import 'package:balbina/db/Counter.dart';
import 'package:balbina/db/Product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotificacaoPage extends StatefulWidget {
  const NotificacaoPage({super.key});

  @override
  State<NotificacaoPage> createState() => _NotificacaoPageState();
}

class _NotificacaoPageState extends State<NotificacaoPage> {
  @override
  Widget build(BuildContext context) {
    List<Product> lista = context.watch<Counter>().listaBuy;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Text("Pedidos realizados"),
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.width * 0.8,
            decoration: const BoxDecoration(
                color: const Color.fromARGB(255, 226, 226, 226),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: ListView.builder(
              itemCount: lista.length,
              itemBuilder: (context, index) {
                return lista[index].name.isEmpty
                    ? Container()
                    : Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 1,
                            child: ListTile(
                              onTap: () => Navigator.of(context)
                                  .pushNamed("buy", arguments: {
                                'produto': lista[index],
                              }),
                              leading: Image.network(
                                lista[index].linkPic.trim(),
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              trailing: Icon(Icons.check),
                              title: Text(" ${lista[index].name} "),
                              subtitle:
                                  Text("Qtd: ${lista[index].qtda.toString()}"),
                            ),
                          ),
                          const Divider(height: 0),
                        ],
                      );
              },
            ),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  context.read<Counter>().ClearBuy();
                });
              },
              child: Text("Limpar lista"))
        ]),
      )),
    );
  }
}
