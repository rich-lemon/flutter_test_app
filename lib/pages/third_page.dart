import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
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
        if (_index < 3) {
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
          title: const Text('Step 1'),
          content: Container(
            alignment: Alignment.centerLeft,
            child: const Text('Content for Step 1'),
          ),
          isActive: _index == 0,
          state: _index > 0 ? StepState.complete : StepState.indexed,
        ),
        Step(
          title: const Text('Step 2'),
          content: Container(
            alignment: Alignment.centerLeft,
            child: const Text('Content for Step 2'),
          ),
          isActive: _index == 1,
          state: _index > 1 ? StepState.complete : StepState.indexed,
        ),
        Step(
          title: const Text('Step 3'),
          content: Container(
            alignment: Alignment.centerLeft,
            child: const Text('Content for Step 3'),
          ),
          isActive: _index == 2,
          state: _index > 2 ? StepState.complete : StepState.indexed,
        ),
        Step(
          title: const Text('Step 4'),
          content: Container(
            alignment: Alignment.centerLeft,
            child: const Text('Content for Step 4'),
          ),
          isActive: _index == 3,
          state: _index > 3 ? StepState.complete : StepState.indexed,
        ),
      ],
    );
  }
}
