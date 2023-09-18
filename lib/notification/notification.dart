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
    
    List<Product> lista=context.watch<Counter>().listaCart;
    
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
         Text("awd")
        ]),
      )),
    );
  }
}
