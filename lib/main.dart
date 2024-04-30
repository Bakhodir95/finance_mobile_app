import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(FinanceMobile());
}

class FinanceMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leadingWidth: 10000,
            leading: Container(
                padding: const EdgeInsets.all(3),
                height: 50,
                width: 156,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          clipBehavior: Clip.hardEdge,
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            "assets/images/image.png",
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                    const Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Bahodir",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Good Morning",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 11),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                )),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_active_outlined,
                    color: Colors.blue,
                    size: 40,
                  ))
            ],
          ),
          body: Container(
            //! eng katta container
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(blurRadius: 30, color: Colors.green.shade700),
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Your Total Balance",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\$7,899.00",
                        style: TextStyle(
                            color: Colors.green.shade600,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('Hide'), Icon(Icons.hide_image)],
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(30),
                ),
                //! 4talik row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green),
                      height: 50,
                      width: 90,
                      child: const Row(
                        children: [
                          Icon(
                            Icons.telegram,
                            color: Colors.white,
                          ),
                          Text(
                            "Send",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink.shade300),
                      height: 50,
                      width: 90,
                      child: Row(
                        children: [
                          Container(
                            child: const Icon(
                              Icons.call_received,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green.shade900),
                          ),
                          const Text(
                            "Receive",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green.shade200),
                      height: 50,
                      width: 90,
                      child: Row(
                        children: [
                          Container(
                            child: const Icon(
                              Icons.swap_horiz,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green.shade900),
                          ),
                          const Text(
                            "Swap",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      height: 50,
                      width: 90,
                      child: Row(
                        children: [
                          Container(
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green.shade900),
                          ),
                          const Text(
                            "Deposit",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      "Recent Transaction",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //! first row
                      scroll()
                    ],
                  ),
                ))
              ],
            ),
          ),
        ));
  }
}

Widget scroll() {
  List<Widget> lst = [];
  for (int i = 0; i < 10; i++) {
    lst.add(const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.circle,
              size: 45,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text("From Ahmad Mughal",
                    style:
                        TextStyle(fontSize: 19, fontWeight: FontWeight.w600)),
                Text(
                  "20 jan 2024 at 10:10 am",
                  style: TextStyle(fontSize: 16),
                )
              ],
            )
          ],
        ),
        Text("+\$2,300",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600))
      ],
    ));
  }
  return Column(
    children: lst,
  );
}
