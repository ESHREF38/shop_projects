import 'package:coffee_shop_app_1/widgets/home_bottom_bar.dart';
import 'package:coffee_shop_app_1/widgets/items_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener((_handleTabselection));
    super.initState();
  }

  // ignore: unused_element
  _handleTabselection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: Container(
            child: ListView(
              children: [
                Padding(
                  padding: PaddingMargin().edgeInsets,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.sort_rounded,
                          color: PaddingMargin().withOpacity,
                          size: 35,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.notifications,
                          color: PaddingMargin().withOpacity,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: PaddingMargin().edgeInsets,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "It' s Great Day for Coffee",
                      style: TextStyle(
                          color: PaddingMargin().labelTextColor,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  margin: PaddingMargin().edgeInsetsMargin,
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 50, 54, 56),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Find your coffee",
                        hintStyle: TextStyle(
                          color: PaddingMargin().withOpacity,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30,
                          color: PaddingMargin().withOpacity,
                        )),
                  ),
                ),

                /////Burasi
                TabBar(
                  tabAlignment: TabAlignment.start,
                  labelColor: PaddingMargin().labelColor,
                  unselectedLabelColor: PaddingMargin().withOpacity,
                  isScrollable: true,
                  controller: _tabController,
                  dividerColor: Colors.transparent,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3,
                      color: PaddingMargin().labelColor,
                    ),
                  ),
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    Tab(text: "Hot Coffee"),
                    Tab(text: "Cold Coffee"),
                    Tab(text: "Cappuiccino "),
                    Tab(text: "Americano"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: [
                   Itemswidget(),
                   Itemswidget(),
                   Itemswidget(),
                   Itemswidget(),
                  ][_tabController.index],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}

class PaddingMargin {
  final edgeInsets = EdgeInsets.symmetric(horizontal: 15);
  final edgeInsetsMargin = EdgeInsets.symmetric(horizontal: 15, vertical: 20);
  final withOpacity = Colors.white.withOpacity(0.5);
  final labelColor = Color(0xFFE57734);
  final labelTextColor = Colors.white;
}
