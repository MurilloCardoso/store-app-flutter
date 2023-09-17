import 'package:balbina/componente/CardView.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(7),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 196, 195, 195),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: const Icon(
                        Icons.person_2_outlined,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Hello ',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(
                            text: 'Luciano Verraz',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Divider(height: 0),
            const ListTile(
              trailing: Icon(Icons.arrow_right_sharp),
              title: Text(
                "Seus Pedidos",
                style: TextStyle(fontSize: 13),
              ),
            ),
            const Divider(height: 0),
            const ListTile(
              trailing: Icon(Icons.arrow_right_sharp),
              title: Text(
                "Sua Conta",
                style: TextStyle(fontSize: 13),
              ),
            ),
            const Divider(height: 0),
            const ListTile(
              trailing: Icon(Icons.arrow_right_sharp),
              title: Text(
                "Lista de desejo",
                style: TextStyle(fontSize: 13),
              ),
            ),
            const Divider(height: 0),
            const ListTile(
              trailing: Icon(Icons.arrow_right_sharp),
              title: Text(
                "Comprar novamente",
                style: TextStyle(fontSize: 13),
              ),
            ),
            const Divider(height: 0),
            const Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Comprar novamente",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.42,
                  child: SizedBox(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4, // Número de colunas
                      itemBuilder: (context, columnIndex) {
                        return Container(
                          width: MediaQuery.of(context).size.width *
                              0.5, // Defina a largura desejada
                          margin: EdgeInsets.all(5),
                          child: CardView(
                            link:
                                "https://down-br.img.susercontent.com/file/br-11134201-23030-hxch0lxg8vov16",
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
