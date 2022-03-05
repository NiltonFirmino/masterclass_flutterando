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
  final TextEditingController? _cpfController = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarHome(title: 'CPF Generator Validator'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
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
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(10.0)),

                  disabledBorder: OutlineInputBorder(
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
                ),
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.generateCpf();
                _cpfController?.value = _cpfController!.value.copyWith(
                  text: controller.cpf,
                  selection:
                      TextSelection.collapsed(offset: controller.cpf.length),
                );
              },
              child: const Text('Gerar CPF'),
            ),
          ],
        ),
      ),
    );
  }
}
