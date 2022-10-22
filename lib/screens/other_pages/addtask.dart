import 'package:flutter/material.dart';
import 'package:oddo_app/screens/home_screen/home.dart';
import 'package:oddo_app/screens/other_pages/secondPage.dart';
import 'package:oddo_app/screens/other_pages/thirdpage.dart';

import 'firstpage.dart';

class AddTaskPage extends StatefulWidget {
  AddTaskPage({Key? key}) : super(key: key);

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  int _currentStep = 0;
  var pages = [_InspectionForm(), _HiringForm(), _ResultForm()];
  _stepState(int step) {
    if (_currentStep > step) {
      return StepState.complete;
    } else {
      return StepState.editing;
    }
  }

  // ignore: prefer_final_fields

  @override
  Widget build(BuildContext context) {
    List<Step> _steps = [
      Step(
        title: Text('Inspection'),
        content: pages[0],
        state: _stepState(0),
        isActive: _currentStep == 0,
      ),
      Step(
        title: Text('Hiring'),
        content: pages[1],
        state: _stepState(1),
        isActive: _currentStep == 1,
      ),
      Step(
        title: Text('Result'),
        content: pages[2],
        state: _stepState(2),
        isActive: _currentStep == 2,
      )
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Inspection',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          InkWell(
              child: const Icon(
                Icons.check,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }),
          const Padding(padding: EdgeInsets.only(right: 20)),
        ],
      ),
      body: SafeArea(
        child: Stepper(
          steps: _steps,
          type: StepperType.horizontal,
          controlsBuilder: (BuildContext context, ControlsDetails controls) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: _currentStep == 0
                    ? MainAxisAlignment.end
                    : _currentStep == _steps.length - 1
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.spaceBetween,
                children: [
                  if (_currentStep != 0)
                    ElevatedButton(
                      // onPressed: controls.onStepContinue,
                      // child: Text("Next"),
                      onPressed: controls.onStepCancel,
                      child: Text('Back'),
                    ),
                  if (_currentStep != _steps.length - 1)
                    ElevatedButton(
                      // onPressed: controls.onStepCancel,
                      // child: Text('Back'),
                      onPressed: controls.onStepContinue,

                      child: Text("Next"),
                    )
                ],
              ),
            );
          },
          onStepTapped: (step) => setState(() => _currentStep = step),
          onStepContinue: () {
            setState(() {
              if (_currentStep < _steps.length - 1) {
                _currentStep += 1;
              } else {
                _currentStep = 0;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (_currentStep > 0) {
                _currentStep -= 1;
              } else {
                _currentStep = 0;
              }
            });
          },
          currentStep: _currentStep,
        ),
      ),
    );
  }
}

class _InspectionForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MySecondPage();
  }
}

class _HiringForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // throw UnimplementedError();
    return MyThirdPage();
  }
}

class _ResultForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // throw UnimplementedError();
    return MyFirstPage();
  }
}
