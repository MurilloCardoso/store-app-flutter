import 'package:balbina/Profile/profile.dart';
import 'package:balbina/buyStore.dart';
import 'package:balbina/cart/cart.dart';
import 'package:balbina/componente/CardView.dart';
import 'package:balbina/db/Counter.dart';
import 'package:balbina/db/Product.dart';
import 'package:balbina/notification/notification.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Flutter code sample for [NavigationBar].

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: const NavigationBarApp(),
    ),
  );
}

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 0, 0, 0)),
        ),
        home: const NavigationExample(title: 'Store'),
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          "buy": (BuildContext context) => new BuyStore(),
          "cart": (BuildContext context) => new CartPage(),
        });
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key, required this.title});
  final String title;

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  List<Product> db = [
    Product("T-shirt Luffy", 20,
        "https://cf.shopee.com.br/file/072eaf8e46f41c3f5fd718281bc16f73"),
    Product("T-shirt Barcelona", 10,
        "https://down-br.img.susercontent.com/file/br-11134201-23030-hxch0lxg8vov16"),
    Product("T-shirt Luffy", 20,
        "https://cf.shopee.com.br/file/072eaf8e46f41c3f5fd718281bc16f73"),
    Product("T-shirt Barcelona", 10,
        "https://down-br.img.susercontent.com/file/br-11134201-23030-hxch0lxg8vov16")
  ];
  List<String> images = [
    "https://cf.shopee.com.br/file/br-50009109-9783f8c56be6849a9080bf954abb04b8_xxhdpi",
    "https://cf.shopee.com.br/file/br-50009109-5489624a4f8b864293bf3e056af4c08a_xxhdpi"
        "https://cf.shopee.com.br/file/br-50009109-5258568018a63db68834cd4ea7380f8d_xxhdpi"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50, // Define a altura desejada
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: Color.fromARGB(255, 190, 190, 190),
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon:
                  Icon(Icons.home, size: 20), // Reduza o tamanho do ícone
              icon: Icon(Icons.home_outlined,
                  size: 20), // Reduza o tamanho do ícone
              label: 'Discovery',
            ),
            NavigationDestination(
              icon: Icon(Icons.notifications,
                  size: 20), // Reduza o tamanho do ícone
              label: 'Notification',
            ),
            NavigationDestination(
              selectedIcon:
                  Icon(Icons.person, size: 20), // Reduza o tamanho do ícone
              icon: Icon(Icons.person, size: 20), // Reduza o tamanho do ícone
              label: 'Profile',
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          Container(
              margin: EdgeInsets.only(right: 10),
              child: IconButton(
                icon: const Icon(Icons.local_grocery_store_rounded),
                onPressed: () => Navigator.of(context).pushNamed("cart"),
              ))
        ],
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
            margin: const EdgeInsets.only(
                left: 10, right: 10), // Adicione margem interna
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
      body: <Widget>[
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.amber,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: PageView.builder(
                      itemCount: images.length,
                      pageSnapping: true,
                      itemBuilder: (context, pagePosition) {
                        return Container(
                            decoration: const BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.grey, // Cor da sombra
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
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ));
                      }),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey, // Cor da sombra
                            blurRadius: 2, // Raio de desfoque
                            offset: Offset(0,
                                1), // Deslocamento da sombra (horizontal, vertical)
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Recomendados",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.85,
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: db.length, // Número de colunas
                            itemBuilder: (context, columnIndex) {
                              return Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  children: List.generate(2, (rowIndex) {
                                    final itemIndex =
                                        columnIndex * 2 + rowIndex;
                                    if (itemIndex >= 4) {
                                      return SizedBox.shrink();
                                    }
                                    return Expanded(
                                        child: Container(
                                      margin: EdgeInsets.all(5),
                                      child: CardView(
                                        link: db[columnIndex],
                                      ),
                                    )); // Certifique-se de que CardView esteja importado corretamente
                                  }),
                                ),
                              );
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Category",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(
                                top: 5, bottom: 15, left: 10, right: 10),
                            width: MediaQuery.of(context).size.width * 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(50))),
                                        child: Icon(
                                          Icons.send_to_mobile_sharp,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.08,
                                        )),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "Acessorios",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(50))),
                                        child: Icon(
                                          Icons.account_balance_rounded,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.08,
                                        )),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "Acessorios",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(50))),
                                        child: Icon(
                                          Icons.gif_box_rounded,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.08,
                                        )),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "Acessorios",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(50))),
                                        child: Icon(
                                          Icons.account_box_sharp,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.08,
                                        )),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "Acessorios",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(50))),
                                        child: Icon(
                                          Icons.wallet_giftcard_rounded,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.08,
                                        )),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "Acessorios",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ],
                            )),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Rawawdwadadadawds",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.85,
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: db.length, // Número de colunas
                            itemBuilder: (context, columnIndex) {
                              return Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  children: List.generate(2, (rowIndex) {
                                    final itemIndex =
                                        columnIndex * 2 + rowIndex;
                                    if (itemIndex >= 4) {
                                      return SizedBox.shrink();
                                    }
                                    return Expanded(
                                        child: Container(
                                      margin: EdgeInsets.all(5),
                                      child: CardView(
                                        link: db[columnIndex],
                                      ),
                                    )); // Certifique-se de que CardView esteja importado corretamente
                                  }),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
        NotificacaoPage(),
        ProfilePage(),
      ][currentPageIndex],
    );
  }
}
