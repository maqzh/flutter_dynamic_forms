// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter_dynamic_forms_components/flutter_dynamic_forms_components.dart';
import 'package:dynamic_forms/dynamic_forms.dart';

class MultiSelectChoice extends FormElement {
  static const String isSelectedPropertyName = 'isSelected';
  static const String labelPropertyName = 'label';

  Property<bool> get isSelectedProperty => properties[isSelectedPropertyName];
  set isSelectedProperty(Property<bool> value) =>
      registerProperty(isSelectedPropertyName, value);
  bool get isSelected =>
      isSelectedProperty.value;
  Stream<bool> get isSelectedChanged => isSelectedProperty.valueChanged;

  Property<String> get labelProperty => properties[labelPropertyName];
  set labelProperty(Property<String> value) =>
      registerProperty(labelPropertyName, value);
  String get label =>
      labelProperty.value;
  Stream<String> get labelChanged => labelProperty.valueChanged;

  @override
  FormElement getInstance() {
    return MultiSelectChoice();
  }
}
