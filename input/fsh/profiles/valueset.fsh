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
* identifier contains
  oid 0..1 

* identifier[oid] 
  * system = "urn:ietf:rfc:3986"
  * ^short = "ISO OID identifier represented as URN"
  * ^definition = "Follows the pattern: urn:oid:1.2.3."
// TODO Should new value sets always get an OID?
// Add to migration


/* 
Add to migration:
- Title
- Id
- BasedOn
*/