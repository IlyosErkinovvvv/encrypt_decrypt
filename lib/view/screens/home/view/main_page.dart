import 'package:exchange_app/view/screens/home/view/home_page.dart';
import 'package:exchange_app/view/widgets/standart_padding_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomePage(),
    const Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return SafeArea(
          child: Scaffold(
            body: StandartPadding(child: _screens[_currentIndex]),
            bottomNavigationBar: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10)),
              child: BottomNavigationBar(
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: "Asosiy",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.currency_exchange_outlined),
                    label: "Ayirboshlash",
                  ),
                ],
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
