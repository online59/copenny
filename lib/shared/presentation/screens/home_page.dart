import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:piggy/features/bottomnav/presentation/widgets/bottom_nav_container_page.dart';
import 'package:piggy/features/wallet/data/provider/wallet_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (BuildContext context) => WalletProvider(),
      child: const BottomNavigationWidget(),
    );
  }
}
