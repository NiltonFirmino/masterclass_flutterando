class CpfModel {
  final String value;

  CpfModel(
    this.value,
  );
}

class Cpf {
  late final String cpf;

  List<String> _clearTin(String code) {
    var cleanCpf = code.replaceAll('.', '');
    cleanCpf = cleanCpf.replaceAll('-', '');
    var number = cleanCpf.split("");
    return number;
  }

  bool _validateDigit(int count, List generatedCpf) {
    int index = 0;
    int result = 0;
    int digitValidator;
    for (count; count >= 2; count--) {
      result += int.parse(generatedCpf[index]) * count;
      index++;
    }
    if (result % 11 < 2) {
      digitValidator = 0;
    } else {
      digitValidator = 11 - (result % 11);
    }
    if (digitValidator == int.parse(generatedCpf[index])) {
      return true;
    } else {
      return false;
    }
  }

  _formatTin(List<String> cleanCpf) {
    String formattedCpf = "";

    for (var index = 0; index < cleanCpf.length; index++) {
      if (index == 3 || index == 6) {
        formattedCpf += ".";
      }
      if (index == 9) {
        formattedCpf += "-";
      }
      formattedCpf += cleanCpf[index];
    }
    return formattedCpf;
  }

  validateCpf(String code) {
    var cleanCpf = _clearTin(code);
    if (_validateDigit(10, cleanCpf) && _validateDigit(11, cleanCpf)) {
      cpf = _formatTin(cleanCpf);
      return true;
    }
    return false;
  }
}
