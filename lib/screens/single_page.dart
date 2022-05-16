import 'package:flutter/material.dart';
import 'package:flutter_exam/core/constants/size_const.dart';

class SinglePage extends StatelessWidget {
  const SinglePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Image.network("https://source.unsplash.com/random/"),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Text(
                            """LONDON — Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said.
                      
Digital currencies like bitcoin, ether and even dogecoin have been on a tear this year, reminding some investors of the 2017 crypto bubble in which bitcoin blasted toward , only to sink as low as 3,122 a year later.
                      
Asked at a press conference Thursday about the rising value of cryptocurrencies, Bailey said: “They have no intrinsic value. That doesn’t mean to say people don’t put value on them, because they can have extrinsic value. But they have no intrinsic value.”
                      
“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”
                      
Bailey’s comments echoed a similar warning from the U.K.’s Financial Conduct Authority.
                      
“Investing in cryptoassets, or investments and lending linked to them, generally involves taking very high risks with investors’ money,” the financial services watchdog said in January.
                      
“If consumers invest in these types of product, they should be prepared to lose all their money.”
                      
Bailey, who was formerly the chief executive of the FCA, has long been a skeptic of crypto. In 2017, he warned: “If you want to invest in bitcoin, be prepared to lose all your money.”""",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 40,
              left: 15,
              child: InkWell(
                child: Container(
                  width: SizeConst.getWidth(32),
                  height: SizeConst.getHeight(32),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.chevron_left_sharp),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Positioned(
              top: 100,
              left: 30,
              child: InkWell(
                child: Container(
                  width: SizeConst.getWidth(311),
                  height: SizeConst.getHeight(141),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.chevron_left_sharp),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
