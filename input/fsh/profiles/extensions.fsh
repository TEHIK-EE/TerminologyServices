Alias: $otherName = http://hl7.org/fhir/StructureDefinition/codesystem-otherName
Alias: $otherNameLocalized = https://fhir.ee/StructureDefinition/other-name-localized
Alias: $translation = http://hl7.org/fhir/StructureDefinition/translation

// TODO A complex extension, that contains a markdown and a link (uri + link name). Or just use markdown and add the links there.
Extension: GuidanceMaterial
Id: guidance-material
Description: "Additional guidance material, providing textual guidance and links to other sources"
* value[x] only markdown


Extension: OtherNameLocalized
Id: other-name-localized
Title: "Localized Other Name"
Description: "Localized Other Name"
Parent: http://hl7.org/fhir/StructureDefinition/codesystem-otherName
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* ^context.type = #element
* ^context.expression = "Resource"
* . ^short = "Any additional localized name."
* . ^definition = "Täiendavad kirjeldused."
* extension contains lang 0..1 and type 0..1
* extension[lang] only Extension
* extension[lang] ^short = "Code for Language"
* extension[lang] ^definition = "Code for Language."
* extension[lang].url only uri
* extension[lang].value[x] 1..
* extension[lang].value[x] only code
* extension[lang].value[x] from CommonLanguages (preferred)
* extension[lang].value[x] ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/binding-definition"
* extension[lang].value[x] ^binding.extension[=].valueMarkdown = "A human language."
* extension[lang].value[x] ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet"
* extension[lang].value[x] ^binding.extension[=].valueCanonical = "http://hl7.org/fhir/ValueSet/all-languages"
* extension[lang].value[x] ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* extension[lang].value[x] ^binding.extension[=].valueString = "Language"
* extension[lang].value[x] ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* extension[lang].value[x] ^binding.extension[=].valueBoolean = true
* extension[lang].value[x] ^binding.description = "IETF language tag"
* extension[type] only Extension
* extension[type] ^short = "Kind"
* extension[type] ^definition = "Kind of name."
* extension[type].url only uri
* extension[type].value[x] 1..
* extension[type].value[x] only code
