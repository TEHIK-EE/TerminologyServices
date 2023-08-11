CodeSystem: Properties
Id: properties
Title: "Properties"
Description: "List of standard properties to be used in code systems published by TEHIK"

* ^url = "https://fhir.ee/CodeSystem/properties"
* ^version = "1.0.0"
* ^status = #draft
* ^compositional = false
* ^versionNeeded = true
* ^experimental = false
* ^publisher = "TEHIK"
* ^property.code = #datatype
* ^property.type = #string
// which properties?

* #parent "Parent code" "Code of the parent concept, is-a relationship, grouping category."
* #parent ^property.code = #datatype
* #parent ^property.valueString = "code"
