class CpfModel {
  final String value;

  CpfModel(
    this.value,
  );
}

class Cpf {
  late final String cpf;

  List<String> cleanCpf(String code) {
    var cleanCpf = code.replaceAll('.', '');
    cleanCpf = cleanCpf.replaceAll('-', '');
    var number = cleanCpf.split("");
    return number;
  }

  validateDigit(int count, List generatedCpf) {
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

  formatCpf(List<String> cleanCpf) {
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

  bool validateCpf(String code) {
    var cpfAfterClean = cleanCpf(code);
    if (validateDigit(10, cpfAfterClean) && validateDigit(11, cpfAfterClean)) {
      cpf = formatCpf(cpfAfterClean);
      return true;
    }
    return false;
  }
}
