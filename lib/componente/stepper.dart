

import 'package:flutter/material.dart';
class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  State<StepperExample> createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
     
      currentStep: _index,
      onStepCancel: () {
        if (_index > 0) {
          setState(() {
            _index -= 1;
          });
        }
      },
      onStepContinue: () {
        if (_index <= 0) {
          setState(() {
            _index += 1;
          });
        }
      },
      onStepTapped: (int index) {
        setState(() {
          _index = index;
        });
      },
      steps: <Step>[
        Step(
          title: const Text('Preparando produto', style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.w600),),
          content: Container(
            alignment: Alignment.centerLeft,
            child: const Text('Content for Step 1'),
          ),
        ),
        const Step(
          title: Text('Na Transporte'),
          content: Text('Content for Step 2'),
        ),
          const Step(
          title: Text('Em transito'),
          content: Text('Content for Step 2'),
        ),
          const Step(
          title: Text('Saindo para entrega'),
          content: Text('Content for Step 2'),
        ),
      ],
    );
  }
}