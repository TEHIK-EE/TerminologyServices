// For local/contained code systems we could restrict more about the structure. For the big ones, we only capture the metadata requirements.

Profile: TehikCodeSystem
Parent: ShareableCodeSystem
Id: tehikcodesystem
Title: "TEHIK CodeSystem profile"
Description: "Profile for the basic code system in TEHIK terminology server. The code system may be contained in a value set if it has no independent meaning"

* url 1..1
  * ^definition = "Follows the pattern 'https://fhir.ee/CodeSystem/[Resource Id]'"
// Add to migration

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains guidance-material named changeManagementDescription 0..1
  and guidance-material named codingPrinciples 0..1
  and $otherNameLocalized named otherTitle 0..*

* extension[changeManagementDescription] 
  * ^short = "Description of change management: change requests, release cycles, etc"

* extension[codingPrinciples] 
  * ^short = "Description of coding principles: structure of codes, hierarchy, etc."

* extension[otherTitle] 
  * ^short = "Other human-readable title for the code system"

* identifier
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^short = "A non-FHIR identifier for the code system (e.g ISO OID)"
* identifier contains oid 0..1 

* identifier[oid] 
  * system = "urn:ietf:rfc:3986"
  * ^short = "ISO OID identifier represented as URN"
  * ^definition = "Follows the pattern: urn:oid:1.2.3. Legacy code lists OID identifiers are assigned to the related FHIR value set, not the code system."

* title 
  * ^short = "Name of the code system, a human-readable well understood name"
  * ^definition = "Follows the pattern: ..."
// Add to migration

* name 1..1
  * ^short = "Computer-friendly name/identifier to be used for machine-processing"
  * ^definition = "Follows the pattern: ..."
// Add to migration

* experimental
  * ^comment = "In production terminology server, experimental code systems should not exist, and therefore the default value should be 'false'"

* description
  * ^short = "Short description of the code system"

* purpose
  * ^short = "Overview of the purpose, content, and usage of the code system"

* useContext 0..*
  * valueCodeableConcept 1..1
  * ^short = "Usage context: health, social care, work" 
// TODO: value sets to use here.

//version and versionAlgorithm - anything to add to base spec?


* publisher 1..1
  * ^short = "The maintainer/publisher of the code system. For international code systems, the publisher might be the national release maintainer."
* contact 1..*
* author 0..1 
  * ^short = "Owner of the code system. Organisation/group who is responsible for the content of the code system. For international code systems, the owner might be the national release owner."
  * name 1..1
    * ^short = "Name of the organisation/group."
  