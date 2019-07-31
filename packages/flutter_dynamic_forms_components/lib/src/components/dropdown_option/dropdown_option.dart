import 'package:dynamic_forms/dynamic_forms.dart';
import 'package:meta/meta.dart';

class DropdownOption extends FormElement {
  static const String VALUE_PROPERTY_NAME = "value";
  static const String LABEL_PROPERTY_NAME = "label";

  String get label => properties[LABEL_PROPERTY_NAME].value;
  Stream<String> get labelChanged =>
      properties[LABEL_PROPERTY_NAME].valueChanged;
  String get value => properties[VALUE_PROPERTY_NAME].value;
  Stream<String> get valueChanged =>
      properties[VALUE_PROPERTY_NAME].valueChanged;

  void fillDropdownOption({
    @required String id,
    @required ElementValue<FormElement> parent,
    @required ElementValue<bool> isVisible,
    @required ElementValue<String> label,
    @required ElementValue<String> value,
  }) {
    fillFormElement(id: id, parent: parent, isVisible: isVisible);
    registerElementValue(LABEL_PROPERTY_NAME, label);
    registerElementValue(VALUE_PROPERTY_NAME, value);
  }

  @override
  FormElement getInstance() {
    return DropdownOption();
  }
}