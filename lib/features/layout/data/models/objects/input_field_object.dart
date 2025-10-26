import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import '../../../../../cores/utils/models/classes/input_info.dart';

TextEditingController taskNameController = TextEditingController();
TextEditingController taskNoteController = TextEditingController();
abstract class AddTask {
  static InputInfo taskName = InputInfo(
    controller: taskNameController,
    label: "Task Name",
    hint: "task name",
    validator: FormBuilderValidators.required(),
  );
  static InputInfo taskNote = InputInfo(
    controller: taskNoteController,
    label: "Note",
    hint: "Note",
    validator: FormBuilderValidators.required(),
  );

  static DateTime? chooseDate;
  static TimeOfDay? startTime;
  static TimeOfDay? endTime;
}
