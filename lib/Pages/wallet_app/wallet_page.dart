import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_page_ui/widgets/responsive.dart';

class WalletHomePage extends StatefulWidget {
  const WalletHomePage({Key? key}) : super(key: key);

  @override
  State<WalletHomePage> createState() => _WalletHomePageState();
}

class _WalletHomePageState extends State<WalletHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E2A),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 16,
              ),
              _buildNavbar(context),
              const SizedBox(
                height: 16,
              ),
              const WalletCardWidget(),
              const SizedBox(
                height: 16,
              ),
              _buildAddCardButton(context),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: 600,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        const DataGrid(),
                        const DataGrid(),
                      ],
                    )),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: 600,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: const [
                        IconGrid(
                          icon: Icon(
                            Icons.payment_outlined,
                            size: 36,
                            color: Color(0x6DFFFFFF),
                          ),
                          label: "Pay",
                        ),
                        IconGrid(
                          icon: Icon(
                            Icons.notes_rounded,
                            size: 36,
                            color: Color(0x6DFFFFFF),
                          ),
                          label: "Bills",
                        ),
                        IconGrid(
                          icon: Icon(
                            Icons.qr_code_scanner,
                            size: 36,
                            color: Color(0x6DFFFFFF),
                          ),
                          label: "Scan",
                        ),
                        IconGrid(
                          icon: Icon(
                            Icons.more,
                            size: 36,
                            color: Color(0x6DFFFFFF),
                          ),
                          label: "More",
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: 600,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        "Fast Send Money",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w100),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 600,
                height: 91,
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(
                    dragDevices: {
                      PointerDeviceKind.touch,
                      PointerDeviceKind.mouse,
                    },
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 36, 69, 255),
                                borderRadius: BorderRadius.circular(75),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _buildAddCardButton(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Color(0xFF242834), onPrimary: Colors.white),
          onPressed: () => () {},
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(
              Icons.wallet,
              size: 28,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Add a New Card",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.white),
            )
          ]),
        ),
      ),
    );
  }

  SizedBox _buildNavbar(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  size: 36,
                  color: Colors.white,
                )),
            Text(
              "Wallet",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.pinkAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IconGrid extends StatelessWidget {
  const IconGrid({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final Icon icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
                color: Color(0xFF242834),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(padding: const EdgeInsets.all(16.0), child: icon),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            label,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.white),
          )
        ],
      ),
    ));
  }
}

class DataGrid extends StatelessWidget {
  const DataGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF242834), borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Income",
            ),
            Text(
              "4899",
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ]),
        ),
      ),
    ));
  }
}

class WalletCardWidget extends StatelessWidget {
  const WalletCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      height: ResponsiveWidget.isMobile(context) ? 290 : 350,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          },
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: ResponsiveWidget.isMobile(context)
                      ? MediaQuery.of(context).size.width * 0.90
                      : 560,
                  // width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  // height: 100,
                  child: const Center(child: Text('items[index]')),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
