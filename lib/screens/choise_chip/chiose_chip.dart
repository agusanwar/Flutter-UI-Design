import 'package:chips_choice/chips_choice.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ChoiseChipScreens extends StatefulWidget {
  const ChoiseChipScreens({super.key});

  @override
  State<ChoiseChipScreens> createState() => _ChoiseChipScreensState();
}

class _ChoiseChipScreensState extends State<ChoiseChipScreens> {
  // int? values = 1;
  int tag = 1;
  List<String> options = [
    'News',
    'Entertainment',
    'Politics',
    'Automotive',
    'Sports',
    'Education',
    'Fashion',
    'Travel',
    'Food',
    'Tech',
    'Science',
  ];
  final formKey = GlobalKey<FormState>();
  List<String> formValue = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter ChipsChoice'),
        // actions: <Widget>[
        //   ThemeConsumer(builder: ((context, theme) {
        //     return IconButton(
        //       onPressed: () => theme.toggleMode(),
        //       icon: Icon(theme.modeIcon),
        //     );
        //   })),
        //   IconButton(
        //     icon: const Icon(Icons.help_outline),
        //     onPressed: () => _about(context),
        //   ),
        // ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              addAutomaticKeepAlives: true,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: ChipsChoice<int>.single(
                    value: tag,
                    onChanged: (val) => setState(() => tag = val),
                    choiceItems: C2Choice.listFrom<int, String>(
                      source: options,
                      value: (i, v) => i,
                      label: (i, v) => v,
                    ),
                  ),
                ),
                Content(
                  title:
                      'Wrapped List Single Choice, Custom Border Radius, Leading and Trailing Widget',
                  child: ChipsChoice<int>.single(
                    value: tag,
                    onChanged: (val) => setState(() => tag = val),
                    choiceItems: C2Choice.listFrom<int, String>(
                      source: options,
                      value: (i, v) => i,
                      label: (i, v) => v,
                      tooltip: (i, v) => v,
                      delete: (i, v) => () {
                        setState(() => options.removeAt(i));
                      },
                    ),
                    choiceStyle: C2ChipStyle.toned(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    leading: IconButton(
                      tooltip: 'Add Choice',
                      icon: const Icon(Icons.add_box_rounded),
                      onPressed: () => setState(
                        () => options.add('Opt #${options.length + 1}'),
                      ),
                    ),
                    trailing: IconButton(
                      tooltip: 'Remove Choice',
                      icon: const Icon(Icons.remove_circle),
                      onPressed: () => setState(() => options.removeLast()),
                    ),
                    wrapped: true,
                  ),
                ),
                Content(
                  title: 'Works with FormField and Validator',
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        FormField<List<String>>(
                          autovalidateMode: AutovalidateMode.always,
                          initialValue: formValue,
                          onSaved: (val) =>
                              setState(() => formValue = val ?? []),
                          validator: (value) {
                            if (value?.isEmpty ?? value == null) {
                              return 'Please select some categories';
                            }
                            if (value!.length > 5) {
                              return "Can't select more than 5 categories";
                            }
                            return null;
                          },
                          builder: (state) {
                            return Column(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: ChipsChoice<String>.multiple(
                                    value: state.value ?? [],
                                    onChanged: (val) => state.didChange(val),
                                    choiceItems:
                                        C2Choice.listFrom<String, String>(
                                      source: options,
                                      value: (i, v) => v.toLowerCase(),
                                      label: (i, v) => v,
                                      tooltip: (i, v) => v,
                                    ),
                                    choiceStyle: C2ChipStyle.outlined(
                                      borderWidth: 2,
                                      selectedStyle: const C2ChipStyle(
                                        borderColor: Colors.green,
                                        foregroundColor: Colors.green,
                                      ),
                                    ),
                                    wrapped: true,
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    state.errorText ??
                                        '${state.value!.length}/5 selected',
                                    style: TextStyle(
                                        color: state.hasError
                                            ? Colors.redAccent
                                            : Colors.green),
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Validate returns true if the form is valid, or false otherwise.
                                  if (formKey.currentState!.validate()) {
                                    // If the form is valid, save the value.
                                    formKey.currentState!.save();
                                  }
                                },
                                child: const Text('Submit'),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const Text('Submitted Value:'),
                                    const SizedBox(height: 5),
                                    Text(formValue.toString())
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Content extends StatefulWidget {
  final String title;
  final Widget child;

  const Content({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  ContentState createState() => ContentState();
}

class ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(5),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            // color: Colors.blueGrey[50],
            child: Text(
              widget.title,
              style: const TextStyle(
                // color: Colors.blueGrey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Flexible(fit: FlexFit.loose, child: widget.child),
        ],
      ),
    );
  }
}
