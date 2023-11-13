import 'package:flutter/material.dart';
import 'package:frontend/provider/userProvider.dart';
import 'package:frontend/widgets/SidebarWidget.dart';
import 'package:frontend/widgets/userListWidget.dart';
import 'package:provider/provider.dart';
import 'package:sidebarx/sidebarx.dart';

void main() {
  runApp(const ExUp());
}

const primaryColor = Color.fromRGBO(38, 38, 38, 100);
const canvasColor =  Color.fromRGBO(38, 38, 38, 100);

class ExUp extends StatelessWidget {
  const ExUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider()),
      ],
      child: MaterialApp(
        title: 'ExUp',
        theme: ThemeData(
            backgroundColor: Colors.white
        ),
        home: const HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(),
      body: UserListWidget()
    );
  }
}