import 'package:dynamic_forms_generator/src/model/component_description.dart';
import 'package:dynamic_forms_generator/src/model/component_type.dart';
import 'package:dynamic_forms_generator/src/model/raw_component_description.dart';
import 'package:dynamic_forms_generator/src/parser/component_type_grammar_parser.dart';

class ComponentDescriptionBuilder {
  ComponentDescription buildFromRawComponent(
      RawComponentDescription rawComponent) {
    var typeDefinitionParser =
        ComponentTypeGrammarParser(parseTypeDefinition: true).build();
    ComponentType type = typeDefinitionParser.parse(rawComponent.type).value;

    var typeParser = ComponentTypeGrammarParser().build();

    ComponentType parentType;
    if (rawComponent.parentType != null) {
      parentType = typeParser.parse(rawComponent.parentType).value;
    }

    var properties = <PropertyDescription>[];
    if (rawComponent.properties != null) {
      for (var rawProperty in rawComponent.properties) {
        var propertyType = typeParser.parse(rawProperty.type).value;
        var isMutable = rawProperty.isMutable;
        properties.add(
          PropertyDescription(
            name: rawProperty.name,
            type: propertyType,
            defaultValue: rawProperty.defaultValue,
            isMutable: isMutable,
            isEnum: rawProperty.isEnum,
          ),
        );
      }
    }

    PropertyDescription contentProperty;
    if (rawComponent.contentProperty != null) {
      contentProperty =
          properties.firstWhere((p) => p.name == rawComponent.contentProperty);
    }

    return ComponentDescription(
      type: type,
      parentType: parentType,
      properties: properties,
      contentProperty: contentProperty,
      values: rawComponent.values,
    );
  }
}
