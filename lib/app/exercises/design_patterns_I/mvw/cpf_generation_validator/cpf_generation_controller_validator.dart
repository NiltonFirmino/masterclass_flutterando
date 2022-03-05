import 'dart:math';

import 'package:flutter/material.dart';

import 'cpf_gen_val_models.dart';

class RandomCpfGeneratorController extends ChangeNotifier {
  String cpf = "";

  generateCpf() {
    var cpf = Cpf();
    bool created = false;
    while (created == false) {
      String randomCpf = Random().nextInt(999999999).toString();
      randomCpf += Random().nextInt(99).toString();
      if (randomCpf.length == 11) {
        created = cpf.validateCpf(randomCpf);
      }
    }
    this.cpf = cpf.cpf;
    notifyListeners();
  }
}
