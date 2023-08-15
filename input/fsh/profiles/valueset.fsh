Profile: TehikValueSet
Parent: ShareableValueSet
Id: tehikvalueset
Title: "TEHIK ValueSet profile"
Description: "Profile for the basic value set in TEHIK terminology server. Includes metadata conventions for the value set and its elements."

* url 1..1
  * ^short = "this is the default formula for uri"
  * ^definition = "Follows the pattern 'https://fhir.ee/ValueSet/[Resource Id]'"
// Add to migration
* identifier
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^short = "A non-FHIR identifier for the value set (e.g ISO OID)"
//  * ^definition = ""
* identifier contains oid 0..1 
// TODO decide if we need short identifier - see logical model
* identifier[oid] 
  * system = "urn:ietf:rfc:3986"
  * ^short = "ISO OID identifier represented as URN"
  * ^definition = "Follows the pattern: urn:oid:1.2.3."
// TODO Should new value sets always get an OID?
// Add to migration

* title 
  * ^short = "Name of the value set, a human-readable well understood name. English name can be provided in the translation element."
  * ^definition = "Follows the pattern: ..."
// Add to migration

* extension contains VSOtherTitle named otherTitle 0..*
  * ^short = "Other known title for the value set"
// how to define language or type of name

* name 1..1
  * ^short = "Computer-friendly name/identifier to be used for machine-processing"
  * ^definition = "Follows the pattern: ..."
// Add to migration

* experimental
  * ^comment = "In production terminology server, experimental value sets should not exist, and therefore the default value should be 'false'"

* description
  * ^short = "Short description of the value set"

* purpose
  * ^short = "Overview of the purpose, content, and usage of the value set"

* useContext 0..*
  * valueCodeableConcept 1..1
  * ^short = "Usage context: health, social care, work" 
// TODO: value sets to use here.

//version and versionAlgorithm - anything to add to base spec?

* compose.property 0..*
  * ^comment = "For locally defined code systems, all properties should be in default expansion. This means '*' in the definition."

* publisher 1..1
  * ^short = "The original maintainer/publisher of the value set."
* contact 1..*
* endorser 1..1 
  * ^short = "Owner of the value set. Organisation/group who is responsible for the content of the value set."
  * name 1..1
    * ^short = "Name of the organisation/group."
  
* jurisdiction 0..0
* topic 0..0

* extension contains guidance-material named changeManagementDescription 1..1
  * ^short = "Description of change management: periodicity, change request workflow, release dates, responsibilities, etc"


* contained
  * ^short = "A value set can contain codesystem supplement if the code system does not have a meaningful use outside this value set."
/* 
Add to migration:
- Id
- BasedOn
*/