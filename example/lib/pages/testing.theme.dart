import 'package:example/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sagu_brand/brand.dart';

import '../lorem.dart';
import 'main/main.view.page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
      builder: (_, child) {
        return child!;
      },
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  void _showDateTimePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.utc(DateTime.now().year + 1),
      // builder: (_, child) => Theme(
      //   data: ThemeData(),
      //   child: child!,
      // ),
    );
  }

  void _showDialog() {
    // Dialogs depens on ThemeMode - dark or light
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          content: Text(lorem),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    final ColorScheme colorTheme = Theme.of(context).colorScheme;
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text(
          "Sagu",
          style: TextStyle(
            color: colorTheme.onPrimary,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz_outlined),
            onPressed: () {},
          )
        ],
        leading: IconButton(
          icon: Icon(Icons.menu),
          // color: colorTheme.onPrimary,
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
      ),
      drawer: Theme(data: ThemeData.dark(), child: Drawer()),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    errorText: "some error",
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: TextButton(
                  child: Text("best button"),
                  onPressed: () {},
                  // style: TextButton.styleFrom(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20.0),
                  ),
                  onPressed: _selectTime,
                  child: Text('SELECT TIME'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20.0),
                  ),
                  onPressed: _showDateTimePicker,
                  child: Text('SELECT DATE TIME'),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Text("MaterialButton"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text("TextButton with elevation"),
                  style: TextButton.styleFrom(
                    elevation: 2.0,
                    primary: Colors.white,
                    backgroundColor: secondary,
                    padding: const EdgeInsets.all(18.0),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("ElevatedButton"),
                  style: TextButton.styleFrom(
                    elevation: 2.0,
                    primary: Colors.white,
                    backgroundColor: secondary,
                    padding: const EdgeInsets.all(18.0),
                  ),
                ),
              ),
              CloseButton(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20.0),
                  ),
                  onPressed: _showDialog,
                  child: Text('Show Dialog'),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Selected time: ${_time.format(context)}',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("CARD $lorem"),
                  ),
                ),
              ),
              Center(
                child: OwnSlider(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                child: LinearProgressIndicator(),
              ),
              Center(
                child: CircularProgressIndicator(),
              ),
              OwnSwitcher(),
              OwnRadioButton(),
              Chip(
                deleteButtonTooltipMessage: "delete",
                deleteIcon: Icon(Icons.close),
                label: Text("Chip"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => MainViewPage(),
                  ));
                },
                child: Text("goto MainViewPage"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OwnSlider extends StatefulWidget {
  @override
  _OwnSliderState createState() => _OwnSliderState();
}

class _OwnSliderState extends State<OwnSlider> {
  double _slideValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _slideValue,
      divisions: 100,
      label: (_slideValue * 100).toStringAsFixed(0),
      onChanged: (val) {
        setState(() {
          _slideValue = val;
        });
      },
    );
  }
}

class OwnSwitcher extends StatefulWidget {
  @override
  _OwnSwitcherState createState() => _OwnSwitcherState();
}

class _OwnSwitcherState extends State<OwnSwitcher> {
  bool _witchValue = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: Sagu.complementary,
      value: _witchValue,
      onChanged: (val) => setState(() {
        _witchValue = val;
      }),
    );
  }
}

class OwnRadioButton extends StatefulWidget {
  @override
  _OwnRadioButtonState createState() => _OwnRadioButtonState();
}

enum Sex { male, female }

class _OwnRadioButtonState extends State<OwnRadioButton> {
  Sex? _character = Sex.male;

  bool checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio(
          activeColor: Sagu.complementary,
          value: Sex.male,
          groupValue: _character,
          onChanged: (Sex? val) {
            _character = val;
            setState(() {});
          },
        ),
        Radio(
          activeColor: Sagu.complementary,
          value: Sex.female,
          groupValue: _character,
          onChanged: (Sex? val) {
            _character = val;
            setState(() {});
          },
        ),
        Checkbox(
          activeColor: Sagu.complementary,
          value: checkbox,
          onChanged: (bool? val) {
            setState(() {
              checkbox = val!;
            });
          },
        )
      ],
    );
  }
}
