import 'package:flutter/material.dart';

class BuyStore extends StatefulWidget {
  BuyStore(
      {super.key,
      required this.nameProduct,
      required this.quantidadeAvaliacao});
  String nameProduct;
  double quantidadeAvaliacao;
  @override
  State<BuyStore> createState() => _BuyStoreState();
}

class _BuyStoreState extends State<BuyStore> {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://down-br.img.susercontent.com/file/e77ba1fc80591e73642fa55f67ebd914",
      "https://down-br.img.susercontent.com/file/e77ba1fc80591e73642fa55f67ebd914",
      "https://down-br.img.susercontent.com/file/e77ba1fc80591e73642fa55f67ebd914",
      "https://down-br.img.susercontent.com/file/e77ba1fc80591e73642fa55f67ebd914",
    ];
    const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

    String dropdownValue = list.first;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
              margin:const EdgeInsets.only(right: 10),
              child: const Icon(Icons.local_grocery_store_rounded))
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 1,
          decoration:const BoxDecoration(
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
               const EdgeInsets.only(left: 10, right: 10), // Adicione margem interna
            child:const TextField(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        widget.nameProduct,
                        style:const TextStyle(fontSize: 16),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Row(
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '4,7',
                                    style: TextStyle(fontSize: 8),
                                  ),
                                  Icon(Icons.star_rate_rounded,
                                      size: 12,
                                      color: Color.fromARGB(255, 255, 203, 59),
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.grey, // Cor da sombra
                                          blurRadius: 1, // Raio de desfoque
                                          offset: Offset(0,
                                              1), // Deslocamento da sombra (horizontal, vertical)
                                        ),
                                      ]),
                                  Icon(Icons.star_rate_rounded,
                                      size: 12,
                                      color: Color.fromARGB(255, 255, 203, 59),
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.grey, // Cor da sombra
                                          blurRadius: 1, // Raio de desfoque
                                          offset: Offset(0,
                                              1), // Deslocamento da sombra (horizontal, vertical)
                                        ),
                                      ]),
                                  Icon(Icons.star_rate_rounded,
                                      size: 12,
                                      color: Color.fromARGB(255, 255, 203, 59),
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.grey, // Cor da sombra
                                          blurRadius: 1, // Raio de desfoque
                                          offset: Offset(0,
                                              1), // Deslocamento da sombra (horizontal, vertical)
                                        ),
                                      ]),
                                  Icon(Icons.star_rate_rounded,
                                      size: 12,
                                      color: Color.fromARGB(255, 255, 203, 59),
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.grey, // Cor da sombra
                                          blurRadius: 1, // Raio de desfoque
                                          offset: Offset(0,
                                              1), // Deslocamento da sombra (horizontal, vertical)
                                        ),
                                      ]),
                                  Icon(Icons.star_rate_rounded,
                                      size: 12,
                                      color: Color.fromARGB(255, 255, 203, 59),
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.grey, // Cor da sombra
                                          blurRadius: 1, // Raio de desfoque
                                          offset: Offset(0,
                                              1), // Deslocamento da sombra (horizontal, vertical)
                                        ),
                                      ])
                                ],
                              ),
                              Center(
                                  child: Text(
                                "(" +
                                    widget.quantidadeAvaliacao.toString() +
                                    ")",
                                style: TextStyle(fontSize: 8),
                              ))
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Visit a store Anime",
                            style: TextStyle(fontSize: 10, color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * .9,
                    child: PageView.builder(
                        itemCount: images.length,
                        pageSnapping: true,
                        itemBuilder: (context, pagePosition) {
                          return Container(
                              decoration: const BoxDecoration(boxShadow: [
                                BoxShadow(
                                  // Cor da sombra
                                  blurRadius: 5, // Raio de desfoque
                                  offset: Offset(0,
                                      1), // Deslocamento da sombra (horizontal, vertical)
                                ),
                              ]),
                              height: MediaQuery.of(context).size.height * 0.2,
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.network(
                                    images[pagePosition],
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ));
                        }),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(2),
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: Image.network(
                                images[0],
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.all(2),
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: Image.network(
                                images[1],
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.all(2),
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: Image.network(
                                images[2],
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.all(2),
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: Image.network(
                                images[3],
                                fit: BoxFit.cover,
                              )),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.favorite_border),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.share_rounded),
                    ],
                  ),
                  const Divider(),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'RS ',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 15)),
                                  TextSpan(
                                      text: '49 ',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 30,
                                          fontWeight: FontWeight.w600)),
                                  TextSpan(
                                      text: '99',
                                      style: TextStyle(fontSize: 15))
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Entregar GRÁTIS: ',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 12)),
                                TextSpan(
                                    text: 'Segunda-feira, 25 de Setembro',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                child: const Text(
                                  "Em estoque:",
                                  style: TextStyle(color: Colors.blueAccent),
                                )),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 168, 168, 168)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromARGB(255, 212, 234, 247)),
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_drop_down),
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 20, 20, 20)),
                                underline: Container(
                                  height: 0,
                                  color: Colors.transparent,
                                ),
                                onChanged: (String? value) {
                                  // This is called when the user selects an item.
                                  setState(() {
                                    dropdownValue = value!;
                                  });
                                },
                                items: list.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 1,
                            child: ElevatedButton(
                                onPressed: () {}, child: Text("Add to Cart"))),
                        Container(
                            width: MediaQuery.of(context).size.width * 1,
                            child: ElevatedButton(
                                onPressed: () {}, child: Text("Buy Now"))),
                        const SizedBox(
                          height: 15,
                        ),
                        const Row(
                          children: [
                            Text(
                              "Add to Lists",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold,fontSize: 16),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,  crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Pagamentos"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Enviado por"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Vendido por"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Devolução"),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Transação segura"),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Sedex"),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Sedex"),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                
                                  width: MediaQuery.of(context).size.width *
                                      0.6, // Use a largura máxima disponível
                                  child: const Text(
                                    "Elegível para devolução, Reembolso ou Troca em até 30 dias após o recebimento",
                                    style:
                                        TextStyle(overflow: TextOverflow.clip),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
