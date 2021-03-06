// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter_dynamic_forms_components/flutter_dynamic_forms_components.dart';
import 'package:dynamic_forms/dynamic_forms.dart';

class Date extends FormElement {
  static const String firstDatePropertyName = 'firstDate';
  static const String formatPropertyName = 'format';
  static const String initialDatePropertyName = 'initialDate';
  static const String labelPropertyName = 'label';
  static const String lastDatePropertyName = 'lastDate';
  static const String valuePropertyName = 'value';

  Property<DateTime> get firstDateProperty => properties[firstDatePropertyName];
  set firstDateProperty(Property<DateTime> value) =>
      registerProperty(firstDatePropertyName, value);
  DateTime get firstDate =>
      firstDateProperty.value;
  Stream<DateTime> get firstDateChanged => firstDateProperty.valueChanged;

  Property<String> get formatProperty => properties[formatPropertyName];
  set formatProperty(Property<String> value) =>
      registerProperty(formatPropertyName, value);
  String get format =>
      formatProperty.value;
  Stream<String> get formatChanged => formatProperty.valueChanged;

  Property<DateTime> get initialDateProperty => properties[initialDatePropertyName];
  set initialDateProperty(Property<DateTime> value) =>
      registerProperty(initialDatePropertyName, value);
  DateTime get initialDate =>
      initialDateProperty.value;
  Stream<DateTime> get initialDateChanged => initialDateProperty.valueChanged;

  Property<String> get labelProperty => properties[labelPropertyName];
  set labelProperty(Property<String> value) =>
      registerProperty(labelPropertyName, value);
  String get label =>
      labelProperty.value;
  Stream<String> get labelChanged => labelProperty.valueChanged;

  Property<DateTime> get lastDateProperty => properties[lastDatePropertyName];
  set lastDateProperty(Property<DateTime> value) =>
      registerProperty(lastDatePropertyName, value);
  DateTime get lastDate =>
      lastDateProperty.value;
  Stream<DateTime> get lastDateChanged => lastDateProperty.valueChanged;

  Property<DateTime> get valueProperty => properties[valuePropertyName];
  set valueProperty(Property<DateTime> value) =>
      registerProperty(valuePropertyName, value);
  DateTime get value =>
      valueProperty.value;
  Stream<DateTime> get valueChanged => valueProperty.valueChanged;

  @override
  FormElement getInstance() {
    return Date();
  }
}
