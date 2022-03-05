import 'package:flutter/material.dart';
import 'package:mockups_masterclass/app/exercises/design_patterns_I/mvw/cpf_generation_validator/cpf_generation_controller_validator.dart';
import 'package:mockups_masterclass/core/components/appbar_widget.dart';

class CpfGeneratorValidatorPage extends StatefulWidget {
  const CpfGeneratorValidatorPage({Key? key}) : super(key: key);

  @override
  _CpfGeneratorValidatorPageState createState() =>
      _CpfGeneratorValidatorPageState();
}

class _CpfGeneratorValidatorPageState extends State<CpfGeneratorValidatorPage> {
  final RandomCpfGeneratorController controller =
      RandomCpfGeneratorController();
  TextEditingController? _cpfController = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  bool? results;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarHome(title: 'CPF Generator Validator'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 40, left: 40, bottom: 20),
              child: TextFormField(
                controller: _cpfController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10.0)),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2,
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(10.0)),
                  labelText: 'CPF',
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  counterText: results == null
                      ? ''
                      : ((results == true) ? 'CPF é Válido' : 'CPF é Inválido'),
                  counterStyle: TextStyle(
                    color: results == null
                        ? Colors.white
                        : ((results == true) ? Colors.green : Colors.red),
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: results == null
                      ? Colors.white
                      : ((results == true) ? Colors.green : Colors.red),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40, left: 40),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controller.generateCpf();
                      _cpfController?.value = _cpfController!.value.copyWith(
                        text: controller.cpf,
                        selection: TextSelection.collapsed(
                            offset: controller.cpf.length),
                      );
                    },
                    child: const Text('Gerar CPF'),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      bool? results2 =
                          controller.validateCpf(_cpfController!.value.text);
                      results = results2;
                    },
                    child: const Text('Validar CPF'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
