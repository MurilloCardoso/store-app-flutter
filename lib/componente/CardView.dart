import 'package:flutter/material.dart';

class CardView extends StatefulWidget {
  final String link;
  CardView({
    super.key,
    required this.link,
  });

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>  Navigator.of(context).pushNamed("buy"),
      child: Container(
              
        padding: const EdgeInsets.only(bottom: 5),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5.0),
            bottomRight: Radius.circular(5.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 224, 224, 224), // Cor da sombra
              blurRadius: 3, // Raio de desfoque
              offset:
                  Offset(0, 3), // Deslocamento da sombra (horizontal, vertical)
            ),
          ],
          // Outras propriedades de estilo do Container, como cor de fundo, borda, etc.
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          widget.link.isEmpty
          ?Container():
          Image.network(
            widget.link,
            fit: BoxFit.fill,
                   height: MediaQuery.of(context).size.height * 0.3,
          ),
          Container(        
            margin: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "T-Shirt Luffy",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
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
                                  fontSize: 8)),
                          TextSpan(text: '49 '),
                          TextSpan(
                              text: '99',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 8))
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                              color: Color.fromARGB(255, 100, 100, 100),
                              fontSize: 14,
                              decoration: TextDecoration.lineThrough),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'RS ',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 100, 100, 100))),
                            TextSpan(text: '69,'),
                            TextSpan(
                              text: '99',
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  child: Row(
                    children: [
                      Icon(Icons.star_rate_rounded,
                          size: 14,
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
                          size: 14,
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
                          size: 14,
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
                          size: 14,
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
                          size: 14,
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
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
