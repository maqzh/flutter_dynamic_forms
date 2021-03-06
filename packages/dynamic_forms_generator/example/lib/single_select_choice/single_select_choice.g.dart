// GENERATED CODE - DO NOT MODIFY BY HAND

import '../components.dart';

class SingleSelectChoice extends FormElement {
  static const String labelPropertyName = 'label';
  static const String valuePropertyName = 'value';

  Property<String> get labelProperty => properties[labelPropertyName];
  set labelProperty(Property<String> value) =>
      registerProperty(labelPropertyName, value);
  String get label =>
      labelProperty.value;
  Stream<String> get labelChanged => labelProperty.valueChanged;

  Property<String> get valueProperty => properties[valuePropertyName];
  set valueProperty(Property<String> value) =>
      registerProperty(valuePropertyName, value);
  String get value =>
      valueProperty.value;
  Stream<String> get valueChanged => valueProperty.valueChanged;

  @override
  FormElement getInstance() {
    return SingleSelectChoice();
  }
}
