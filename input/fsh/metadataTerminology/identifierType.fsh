CodeSystem: TerminologyIdentifierType
Id: terminology-identifier-type
Title: "Identifier type for terminology assets"
Description: "Identifier type used for terminology assets (such as OID, version OID, etc)"

* ^url = "https://fhir.ee/CodeSystem/terminology-identifier-type"
* ^version = "1.0.0"
* ^status = #draft
* ^compositional = false
* ^versionNeeded = true
* ^experimental = true
* ^publisher = "TEHIK"

* ^caseSensitive = false


* #oid "OID" "OID identifier on a concept level (e.g OID for value set)"
* #versionOID "Version OID" "OID on a version level (e.g OID for a value set version)"

ValueSet: TerminologyIdentifierType
Id: terminology-identifier-type
Title: "Identifier type for terminology assets"
Description: "Identifier type used for terminology assets (such as OID, version OID, etc)"

* ^url = "https://fhir.ee/ValueSet/terminology-identifier-type"
* ^version = "1"
* ^status = #draft
* ^contact.telecom.system = #email
* ^experimental = true
* ^publisher = "TEHIK"


* include codes from system https://fhir.ee/CodeSystem/terminology-identifier-type
