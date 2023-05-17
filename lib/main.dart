// import 'package:date_time_picker/date_time_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:intl/intl.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter DateTimePicker Demo',
//       home: MyHomePage(),
//       localizationsDelegates: const [
//         GlobalWidgetsLocalizations.delegate,
//         GlobalMaterialLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//       ],
//       supportedLocales: [Locale('en', 'US')], //, Locale('pt', 'BR')],
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   GlobalKey<FormState> _oFormKey = GlobalKey<FormState>();
//   late TextEditingController _controller1;
//   late TextEditingController _controller2;
//   late TextEditingController _controller3;
//   late TextEditingController _controller4;
//
//   //String _initialValue = '';
//   String _valueChanged1 = '';
//   String _valueToValidate1 = '';
//   String _valueSaved1 = '';
//   String _valueChanged2 = '';
//   String _valueToValidate2 = '';
//   String _valueSaved2 = '';
//   String _valueChanged3 = '';
//   String _valueToValidate3 = '';
//   String _valueSaved3 = '';
//   String _valueChanged4 = '';
//   String _valueToValidate4 = '';
//   String _valueSaved4 = '';
//
//   @override
//   void initState() {
//     super.initState();
//     Intl.defaultLocale = 'pt_BR';
//     //_initialValue = DateTime.now().toString();
//     _controller1 = TextEditingController(text: DateTime.now().toString());
//     _controller2 = TextEditingController(text: DateTime.now().toString());
//     _controller3 = TextEditingController(text: DateTime.now().toString());
//
//     // String lsHour = TimeOfDay.now().hour.toString().padLeft(2, '0');
//     // String lsMinute = TimeOfDay.now().minute.toString().padLeft(2, '0');
//     // _controller4 = TextEditingController(text: '$lsHour:$lsMinute');
//
//     _getValue();
//   }
//
//   /// This implementation is just to simulate a load data behavior
//   /// from a data base sqlite or from a API
//   Future<void> _getValue() async {
//     await Future.delayed(const Duration(seconds: 3), () {
//       setState(() {
//         //_initialValue = '2000-10-22 14:30';
//         _controller1.text = '2000-09-20 14:30';
//         _controller2.text = '2001-10-21 15:31';
//         _controller3.text = '2002-11-22';
//         _controller4.text = '17:01';
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter DateTimePicker Demo'),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.only(left: 20, right: 20, top: 10),
//         child: Form(
//           key: _oFormKey,
//           child: Column(
//             children: <Widget>[
//               DateTimePicker(
//                 type: DateTimePickerType.dateTimeSeparate,
//                 dateMask: 'd MMM, yyyy',
//                 controller: _controller1,
//                 //initialValue: _initialValue,
//                 firstDate: DateTime(2000),
//                 lastDate: DateTime(2100),
//                 icon: Icon(Icons.event),
//                 dateLabelText: 'Date',
//                 timeLabelText: "Hour",
//                 //use24HourFormat: false,
//                 //locale: Locale('pt', 'BR'),
//                 selectableDayPredicate: (date) {
//                   if (date.weekday == 6 || date.weekday == 7) {
//                     return false;
//                   }
//                   return true;
//                 },
//                 onChanged: (val) => setState(() => _valueChanged1 = val),
//                 validator: (val) {
//                   setState(() => _valueToValidate1 = val ?? '');
//                   return null;
//                 },
//                 onSaved: (val) => setState(() => _valueSaved1 = val ?? ''),
//               ),
//               DateTimePicker(
//                 type: DateTimePickerType.dateTime,
//                 dateMask: 'd MMMM, yyyy - hh:mm a',
//                 controller: _controller2,
//                 //initialValue: _initialValue,
//                 firstDate: DateTime(2000),
//                 lastDate: DateTime(2100),
//                 //icon: Icon(Icons.event),
//                 dateLabelText: 'Date Time',
//                 use24HourFormat: false,
//                 locale: Locale('en', 'US'),
//                 onChanged: (val) => setState(() => _valueChanged2 = val),
//                 validator: (val) {
//                   setState(() => _valueToValidate2 = val ?? '');
//                   return null;
//                 },
//                 onSaved: (val) => setState(() => _valueSaved2 = val ?? ''),
//               ),
//               DateTimePicker(
//                 type: DateTimePickerType.date,
//                 //dateMask: 'yyyy/MM/dd',
//                 controller: _controller3,
//                 //initialValue: _initialValue,
//                 firstDate: DateTime(2000),
//                 lastDate: DateTime(2100),
//                 icon: Icon(Icons.event),
//                 dateLabelText: 'Date',
//                 locale: Locale('pt', 'BR'),
//                 onChanged: (val) => setState(() => _valueChanged3 = val),
//                 validator: (val) {
//                   setState(() => _valueToValidate3 = val ?? '');
//                   return null;
//                 },
//                 onSaved: (val) => setState(() => _valueSaved3 = val ?? ''),
//               ),
//               DateTimePicker(
//                 type: DateTimePickerType.time,
//                 //timePickerEntryModeInput: true,
//                 //controller: _controller4,
//                 initialValue: '', //_initialValue,
//                 icon: Icon(Icons.access_time),
//                 timeLabelText: "Time",
//                 use24HourFormat: false,
//                 locale: Locale('pt', 'BR'),
//                 onChanged: (val) => setState(() => _valueChanged4 = val),
//                 validator: (val) {
//                   setState(() => _valueToValidate4 = val ?? '');
//                   return null;
//                 },
//                 onSaved: (val) => setState(() => _valueSaved4 = val ?? ''),
//               ),
//               SizedBox(height: 20),
//
//           ElevatedButton(
//               onPressed: () {
//                 final loForm = _oFormKey.currentState;
//
//                 if (loForm?.validate() == true) {
//                   loForm?.save();
//                 }
//               },
//               child: Text('Submit'),
//             ),
//
//           ElevatedButton(
//               onPressed: () {
//                 final loForm = _oFormKey.currentState;
//                 loForm?.reset();
//
//                 setState(() {
//                   _valueChanged1 = '';
//                   _valueChanged2 = '';
//                   _valueChanged3 = '';
//                   _valueChanged4 = '';
//                   _valueToValidate1 = '';
//                   _valueToValidate2 = '';
//                   _valueToValidate3 = '';
//                   _valueToValidate4 = '';
//                   _valueSaved1 = '';
//                   _valueSaved2 = '';
//                   _valueSaved3 = '';
//                   _valueSaved4 = '';
//                 });
//
//                 _controller1.clear();
//                 _controller2.clear();
//                 _controller3.clear();
//                 _controller4.clear();
//               },
//               child: Text('Reset'),
//             ),
//
//             // Text(
//               //   'DateTimePicker data value onChanged:',
//               //   style: TextStyle(fontWeight: FontWeight.bold),
//               // ),
//               // SizedBox(height: 10),
//               // SelectableText(_valueChanged1),
//               // SelectableText(_valueChanged2),
//               // SelectableText(_valueChanged3),
//               // SelectableText(_valueChanged4),
//               // SizedBox(height: 10),
//               // ElevatedButton(
//               //   onPressed: () {
//               //     final loForm = _oFormKey.currentState;
//               //
//               //     if (loForm?.validate() == true) {
//               //       loForm?.save();
//               //     }
//               //   },
//               //   child: Text('Submit'),
//               // ),
//               // SizedBox(height: 30),
//               // Text(
//               //   'DateTimePicker data value validator:',
//               //   style: TextStyle(fontWeight: FontWeight.bold),
//               // ),
//               // SizedBox(height: 10),
//               // SelectableText(_valueToValidate1),
//               // SelectableText(_valueToValidate2),
//               // SelectableText(_valueToValidate3),
//               // SelectableText(_valueToValidate4),
//               // SizedBox(height: 10),
//               // Text(
//               //   'DateTimePicker data value onSaved:',
//               //   style: TextStyle(fontWeight: FontWeight.bold),
//               // ),
//               // SizedBox(height: 10),
//               // SelectableText(_valueSaved1),
//               // SelectableText(_valueSaved2),
//               // SelectableText(_valueSaved3),
//               // SelectableText(_valueSaved4),
//               // SizedBox(height: 20),
//               // ElevatedButton(
//               //   onPressed: () {
//               //     final loForm = _oFormKey.currentState;
//               //     loForm?.reset();
//
//               //     setState(() {
//               //       _valueChanged1 = '';
//               //       _valueChanged2 = '';
//               //       _valueChanged3 = '';
//               //       _valueChanged4 = '';
//               //       _valueToValidate1 = '';
//               //       _valueToValidate2 = '';
//               //       _valueToValidate3 = '';
//               //       _valueToValidate4 = '';
//               //       _valueSaved1 = '';
//               //       _valueSaved2 = '';
//               //       _valueSaved3 = '';
//               //       _valueSaved4 = '';
//               //     });
//               //
//               //     _controller1.clear();
//               //     _controller2.clear();
//               //     _controller3.clear();
//               //     _controller4.clear();
//               //   },
//               //   child: Text('Reset'),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:drag_and_drop_flutter/drag_and_drop_flutter.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: ''),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// enum DragState {
//   inactive,
//   over,
//   dropped,
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   DragState _state = DragState.inactive;
//
//   @override
//   Widget build(BuildContext context) {
//     String text = '';
//     if (_state == DragState.inactive) {
//       text = 'Drag a file or folder on the app.';
//     } else if (_state == DragState.over) {
//       text = 'File or folder over app.';
//     } else {
//       text = 'You dropped something \u{1F451}';
//     }
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: DragDropArea(
//         // Refuse images
//         canDrop: (items) =>
//         items.where((item) => item.type.contains('image/')).isEmpty,
//         // Set a link when dragging out.
//         dragData: DragData(
//           type: DragDropType.copy,
//           items: const [
//             DataTransferItem.data(
//               type: 'text/uri-list',
//               data: 'https://jjagg.dev',
//             ),
//             DataTransferItem.data(
//               type: 'text/plain',
//               data: 'https://jjagg.dev',
//             ),
//           ],
//         ),
//         onDragEnter: (items) {
//           debugPrint('Enter:');
//           debugPrint(
//             items.map((e) => '  ${e.isFile ? 'FILE' : e.type}').join('\n'),
//           );
//
//           setState(() {
//             _state = DragState.over;
//           });
//         },
//         onDragExit: () {
//           debugPrint('Exit:');
//           setState(() {
//             _state = DragState.inactive;
//           });
//         },
//         onDrop: (data) async {
//           debugPrint('Drop:');
//           debugPrint(
//             data.items
//                 .map((e) => e.isFile
//                 ? '  FILE: ${e.file!.name} (${e.file!.path})'
//                 : '  DATA: ${e.data} (${e.type})')
//                 .join('\n'),
//           );
//
//           setState(() {
//             _state = DragState.dropped;
//           });
//           await Future.delayed(const Duration(seconds: 2));
//           if (_state == DragState.dropped) {
//             setState(() {
//               _state = DragState.inactive;
//             });
//           }
//         },
//         child: Center(
//           child: Text(
//             text,
//             style: Theme.of(context).textTheme.headline4,
//           ),
//         ),
//       ),
//     );
//   }
// }
//
import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("${selectedDate.toLocal()}".split(' ')[0]),
            const SizedBox(height: 20.0,),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: const Text('Select date'),
            ),
          ],
        ),
      ),
    );
  }
}