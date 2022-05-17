import 'package:flutter/material.dart';
import 'package:flutter_exam/core/constants/colors_const.dart';
import 'package:flutter_exam/core/constants/size_const.dart';
import 'package:flutter_exam/service/news_sevice.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);

    return Scaffold(
      backgroundColor: ColorsConst.white,
      appBar: AppBar(
        elevation: 0,
        title: SizedBox(
          width: 375,
          height: 100,
          child: Row(
            children: [
              Expanded(
                flex: 8,
                child: SizedBox(
                  width: SizeConst.getWidth(345),
                  height: SizeConst.getHeight(40),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Dogecoin to the Moon...",
                      labelStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      suffixIcon: const Icon(Icons.search),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: InkWell(
                  child: Image.asset("assets/images/notif.png"),
                  onTap: () {
                    Navigator.pushNamed(context, "/hot");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: FutureBuilder(
        future: NewsService.getData(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("Something went wrong!"),
            );
          } else {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConst.getWidth(15),
                vertical: SizeConst.getHeight(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Latest News",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0080FF),
                        ),
                      ),
                      SizeConst.horizontalBox(10),
                      const Icon(
                        Icons.arrow_forward,
                        color: Color(0xFF0080FF),
                        size: 15,
                      ),
                    ],
                  ),
                  SizeConst.verticalBox(16),
                  Stack(
                    children: [
                      Container(
                        width: SizeConst.getWidth(345),
                        height: SizeConst.getHeight(240),
                        decoration: BoxDecoration(
                          color: ColorsConst.gradient,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      const Positioned(
                        child: SizedBox(
                          width: 250,
                          child: Text(
                            "Crypto investors should be prepared to lose all their money, BOE governor says",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        top: 70,
                        left: 30,
                      ),
                      const Positioned(
                        child: SizedBox(
                          width: 300,
                          child: Text(
                            "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        bottom: 20,
                        left: 20,
                      ),
                    ],
                  ),
                  SizeConst.verticalBox(24),
                  SizedBox(
                    height: SizeConst.getHeight(32),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      separatorBuilder: (context, index) {
                        return SizeConst.horizontalBox(8);
                      },
                      itemBuilder: (context, index) {
                        return const Chip(
                          label: Text("Healthy"),
                          backgroundColor: Colors.transparent,
                          side: BorderSide(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                        );
                      },
                    ),
                  ),
                  SizeConst.verticalBox(16),
                  Expanded(
                    child: ListView.separated(
                      itemCount: 5,
                      separatorBuilder: (context, index) {
                        return SizeConst.verticalBox(8);
                      },
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: Stack(
                            children: [
                              Container(
                                width: SizeConst.getWidth(345),
                                height: SizeConst.getHeight(140),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: ColorsConst.primary,
                                ),
                              ),
                              Positioned(
                                top: 15,
                                left: 20,
                                child: SizedBox(
                                  width: SizeConst.getWidth(300),
                                  child: const Text(
                                    "5 things to know about the 'conundrum' of lupus",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 20,
                                child: SizedBox(
                                  width: SizeConst.getWidth(300),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "Matt Villano",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        "Sunday, 9 May 2021",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/single");
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
