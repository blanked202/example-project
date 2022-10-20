import 'dart:io';

import './started.dart';

Future<void> main() async {
  print("Make Available features auth (Yes/No) ?");

  String? auth = stdin.readLineSync();
  bool authB = auth!.toLowerCase() == 'yes' ? true : false;

  print("Make Available features POS (Yes/No) ?");

  String? pos = stdin.readLineSync();
  bool posB = pos!.toLowerCase() == 'yes' ? true : false;

  print("Make Available features Chat and Notification (Yes/No) ?");

  String? chat = stdin.readLineSync();
  bool chatB = chat!.toLowerCase() == 'yes' ? true : false;

  print("Make Available features Purchase (Yes/No) ?");

  String? purchase = stdin.readLineSync();
  bool purchaseB = purchase!.toLowerCase() == 'yes' ? true : false;

  print("Make Available features Wallet (Yes/No) ?");

  String? wallet = stdin.readLineSync();
  bool walletB = wallet!.toLowerCase() == 'yes' ? true : false;

  if (authB) {
    print('make auth features ...');
    await Future.delayed(Duration(seconds: 1), () {
      makeAvailableAuth();
    });
  }

  if (posB) {
    print('make pos features ...');
    await Future.delayed(Duration(seconds: 1), () {
      makeAvailablePOS();
    });
  }

  if (chatB) {
    print('make chat features ...');
    await Future.delayed(Duration(seconds: 1), () {
      makeAvailableChat();
    });
  }

  if (purchaseB) {
    print('make purhcase features ...');
    await Future.delayed(Duration(seconds: 1), () {
      makeAvailablePurchase();
    });
  }

  if (walletB) {
    print('make wallet features ...');
    await Future.delayed(Duration(seconds: 1), () {
      makeAvailableWallet();
    });
  }
}
