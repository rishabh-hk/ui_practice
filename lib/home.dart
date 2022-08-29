import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<IconData> icons = [
    Icons.currency_bitcoin,
    Icons.currency_bitcoin,
    Icons.currency_bitcoin,
    Icons.currency_bitcoin
  ];

  List<String> token = [
    'Oxf1...dO9d',
    'Oxb5...79x2',
    'Ox5o...N7h9',
    'Oxb5...79x2'
  ];

  List<String> name = [
    'Mainnet',
    'Ropsten testnet',
    'Mainnet',
    'Ropsten testnet'
  ];

  List<String> quantity = [
    '12.482 ETH',
    '38245.12 OGD',
    '326.12 BTC',
    '38245.12 LTC'
  ];

  List<String> dollar = ['\$51.97', '\$215.25', '\$83.58', '\$77.15'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  color: Color(
                    int.parse('0xff27314C'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Ropsten testnet',
                        style: TextStyle(
                          color: Colors.amber,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'oxDeAd...Beef',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Total Balance',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '\$426.35',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(24), // <-- Radius
                            ),
                          ),
                          onPressed: () {
                            //TODO Add Token
                          },
                          child: Row(
                            children: const [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Add token'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Your tokens',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Make Changes',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: (name.length + 1),
                        itemBuilder: (BuildContext context, int index) {
                          if (index == name.length) {
                            return Column(
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                Card(
                                  elevation: 5,
                                  child: SizedBox(
                                      height: 70,
                                      child: ListTile(
                                        leading: const Icon(
                                          Icons.add_circle_outline_rounded,
                                        ),
                                        title: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Add Token",
                                              style: TextStyle(
                                                  color: Color(
                                                    int.parse('0xff27314C'),
                                                  ),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            const Text(
                                              "Bitcoin, CashCoin, Monero..",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            );
                          }
                          return Column(
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              Card(
                                elevation: 5,
                                child: SizedBox(
                                  height: 70,
                                  child: ListTile(
                                    leading: Icon(
                                      icons[index],
                                    ),
                                    trailing: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          quantity[index],
                                          style: TextStyle(
                                              color: Color(
                                                int.parse('0xff27314C'),
                                              ),
                                              fontSize: 15),
                                        ),
                                        Text(
                                          dollar[index],
                                          style: const TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    title: Text(
                                      token[index],
                                      style: TextStyle(
                                          color: Color(
                                            int.parse('0xff27314C'),
                                          ),
                                          fontSize: 15),
                                    ),
                                    subtitle: Text(
                                      name[index],
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
