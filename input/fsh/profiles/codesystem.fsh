// For local/contained code systems we could restrict more about the structure. For the big ones, we only capture the metadata requirements.

Profile: TehikCodeSystem
Parent: ShareableCodeSystem
Id: tehikcodesystem
Title: "TEHIK CodeSystem profile"
Description: "Profile for the basic code system in TEHIK terminology server. The code system may be contained in a value set if it has no independent meaning"

* url 1..1
  * ^definition = "Follows the pattern 'https://fhir.ee/CodeSystem/[Resource Id]'"
// Add to migration

* extension contains change-management-description named changeManagement 1..1
  * ^short = "Description of change management: periodicity, change request workflow, release dates, responsibilities, etc"

* extension contains coding-principles named codingPrinciples 1..1
  * ^short = "Short guidance on how to understand the hierarchy and the structure of codes."