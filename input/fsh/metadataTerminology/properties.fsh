ValueSet: Properties
Id: propertiesvs
Title: "Concept Properties"
Description: "List of properties to be used for codesystem concepts."
* ^extension[http://hl7.org/fhir/StructureDefinition/valueset-supplement].valueCanonical = Canonical(properties-css)
* ^url = "https://fhir.ee/ValueSet/propertiesvs"
* ^version = "1"
* ^status = #draft
* ^contact.telecom.system = #email
* ^experimental = true
* ^publisher = "TEHIK"
* ^compose.property = "datatype"
* ^purpose = "Local codesystems are encouraged to reuse properties as much as possible, keeping in mind that the definition of the property (incl data type) would match the use case. When HL7 defined property exists, it should be preferred to local alternatives."

* http://hl7.org/fhir/concept-properties#parent
* http://hl7.org/fhir/concept-properties#notSelectable
* http://hl7.org/fhir/concept-properties#comment
* http://hl7.org/fhir/concept-properties#inactive

* include codes from system https://fhir.ee/CodeSystem/properties-tehik-cs


CodeSystem: PropertiesSupplement
Id: properties-css
Title: "Concept Properties (supplement to HL7)"
Description: "Standard properties to be used in code systems published by TEHIK, based on HL7. Supplement adds datatype."

* ^url = "https://fhir.ee/CodeSystem/properties-css"
* ^version = "1.0.0"
* ^status = #draft
* ^content = #supplement
* ^supplements = "http://hl7.org/fhir/concept-properties"
* ^compositional = false
* ^versionNeeded = true
* ^experimental = false
* ^publisher = "TEHIK"
* ^property.code = #datatype
* ^property.type = #string
// which properties?

* #parent
* #parent ^property.code = #datatype
* #parent ^property.valueString = "code"

* #notSelectable
* #notSelectable ^property.code = #datatype
* #notSelectable ^property.valueString = "boolean"

* #comment
* #comment ^property.code = #datatype
* #comment ^property.valueString = "string"

* #inactive
* #inactive ^property.code = #datatype
* #inactive ^property.valueString = "boolean"

 
CodeSystem: PropertiesTEHIK
Id: properties-tehik-cs
Title: "Concept Properties (TEHIK)"
Description: "Properties used in code systems published by TEHIK."

* ^url = "https://fhir.ee/CodeSystem/properties-tehik-cs"
* ^version = "1.0.0"
* ^status = #draft
* ^compositional = false
* ^versionNeeded = true
* ^experimental = false
* ^publisher = "TEHIK"
* ^property.code = #datatype
* ^property.type = #string
* ^caseSensitive = false
// which properties?

* #replaces "Replaces" "Code of an inactivated concept the current concept is meant to replace. Mostly used in supplements or local code systems."
* #replaces ^property.code = #datatype
* #replaces ^property.valueString = "code"


