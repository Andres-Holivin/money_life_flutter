import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BalanceCard extends StatefulWidget {
  BalanceCard(
      {Key? key,
      required this.image,
      required this.type,
      required this.balance,
      required this.accountNumber})
      : super(key: key);
  final String image;
  final String type;
  final String balance;
  final String accountNumber;

  @override
  _BalanceCardState createState() =>
      _BalanceCardState(image, type, balance, accountNumber);
}

class _BalanceCardState extends State<BalanceCard> {
  _BalanceCardState(this.image, this.type, this.balance, this.accountNumber);
  final String image;
  final String type;
  final String balance;
  final String accountNumber;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder<PaletteGenerator>(
            future: _updatePaletteGenerator(image), // async work
            builder: (BuildContext context,
                AsyncSnapshot<PaletteGenerator> snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return Center(child: CircularProgressIndicator());
                default:
                  if (snapshot.hasError)
                    return new Text('Error: ${snapshot.error}');
                  else {
                    return Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: SizedBox(
                        width: 400,
                        height: 200,
                        child: Stack(children: [
                          SizedBox(
                            width: 400,
                            height: 200,
                            child: Card(
                              color: snapshot.data!.dominantColor!.color,
                            ),
                          ),
                          Container(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: 100, child: Image.asset(image))),
                          SizedBox(
                            width: 400,
                            height: 200,
                            child: Card(
                              color: Colors.transparent.withOpacity(0.4),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      type,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Balance",
                                      style: TextStyle(
                                          fontSize: 16, letterSpacing: 1),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        balance,
                                        style: TextStyle(
                                            fontSize: 34,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        accountNumber,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                            letterSpacing: 5),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    );
                  }
              }
            })
      ],
    );
  }
}

Future<PaletteGenerator> _updatePaletteGenerator(String image) async {
  var paletteGenerator = await PaletteGenerator.fromImageProvider(
    Image.asset(image).image,
  );
  return paletteGenerator;
}
