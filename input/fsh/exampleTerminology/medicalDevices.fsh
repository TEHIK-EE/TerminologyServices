Instance: abivahendid-ja-meditsiiniseadmed-supplement
InstanceOf: TehikCodeSystem
Usage: #example

* title = "Abivahendid ja meditsiiniseadmed. Koodisüsteemi lisa."
* description = "Code System Supplement that provides custom hierarchy to be used in a specific value set"
* url = "https://fhir.ee/CodeSystem/abivahendid-ja-meditsiiniseadmed-supplement"
* version = "1.0.0"
* status = #active
* name = "AbivahendidJaMeditsiiniseadmedSupplement"

* extension[0].url = $otherNameLocalized 
* extension[0].extension[0].url = "name"
* extension[0].extension[=].valueString = "Aids and medical devices"
* extension[0].extension[+].url = "lang"
* extension[0].extension[=].valueCode = #en
* extension[0].extension[+].url = "type"
* extension[0].extension[=].valueCode = #title

* title.extension[0].url = $translation
* title.extension[=].extension[0].url = "lang"
* title.extension[=].extension[=].valueCode = #en
* title.extension[=].extension[+].url = "content"
* title.extension[=].extension[=].valueString = "Aids and medical devices"
* title.extension[+].url = $translation
* title.extension[=].extension[0].url = "lang"
* title.extension[=].extension[=].valueCode = #ru
* title.extension[=].extension[+].url = "content"
* title.extension[=].extension[=].valueString = "Вспомогательные средства и медицинское оборудование"

* compositional = false
* content = #supplement
* supplements = $SCT
* versionNeeded = true
* experimental = true
* publisher = "TEHIK"
* endorser.name = "TEHIK"
* caseSensitive = false
* contact.telecom.system = #email
* property[0].code = #groupedBy
* property[=].type = #code
* property[+].code = #notSelectable
* property[=].type = #boolean

* concept[0].code = $SCT#257192006
* concept[=].display = "Nägemist toetav vahend"
* concept[=].display = "Aid to vision (physical object)"
* concept[=].property[0].code = #notSelectable
* concept[=].property[=].valueBoolean = true

* concept[+].code = $SCT#6012004
* concept[=].display = "Kuulmist toetav vahend"
* concept[=].display = "Hearing aid, device (physical object)"
* concept[=].property[0].code = #notSelectable
* concept[=].property[=].valueBoolean = true

* concept[+].code = $SCT#43252007
* concept[=].display = "Kohleaarimplantaat"
* concept[=].display = "Cochlear prosthesis, device (physical object)"
* concept[=].property[0].code = #groupedBy
* concept[=].property[=].valueCode = #6012004
* concept[=].property[+].code = #notSelectable
* concept[=].property[=].valueBoolean = false

* concept[+].code = $SCT#467138008
* concept[=].display = "Kõrvatagune kuuldeaparaat"
* concept[=].display = "Behind-the-ear air-conduction hearing aid (physical object)"
* concept[=].property[0].code = #groupedBy
* concept[=].property[=].valueCode = #6012004
* concept[=].property[+].code = #notSelectable
* concept[=].property[=].valueBoolean = false

* concept[+].code = $SCT#469512007
* concept[=].display = "Kõrvasisene kuuldeaparaat"
* concept[=].display = "In-the-ear air-conduction hearing aid (physical object)"
* concept[=].property[0].code = #groupedBy
* concept[=].property[=].valueCode = #6012004
* concept[=].property[+].code = #notSelectable
* concept[=].property[=].valueBoolean = false

* concept[+].code = $SCT#50121007
* concept[=].display = "Prillid"
* concept[=].display = "Eye glasses, device (physical object)"
* concept[=].property[0].code = #groupedBy
* concept[=].property[=].valueCode = #257192006
* concept[=].property[+].code = #notSelectable
* concept[=].property[=].valueBoolean = false

* concept[+].code = $SCT#57368009
* concept[=].display = "Kontaktläätsed"
* concept[=].display = "Contact lenses, device (physical object)"
* concept[=].property[0].code = #groupedBy
* concept[=].property[=].valueCode = #257192006
* concept[=].property[+].code = #notSelectable
* concept[=].property[=].valueBoolean = false

* concept[+].code = $SCT#264865009
* concept[=].display = "Suurendusklaas"
* concept[=].display = "Optical near vision magnifier (physical object)"
* concept[=].property[0].code = #groupedBy
* concept[=].property[=].valueCode = #257192006
* concept[=].property[+].code = #notSelectable
* concept[=].property[=].valueBoolean = false

* concept[+].code = $SCT#414928009
* concept[=].display = "Silmaprotees"
* concept[=].display = "Ocular prosthesis (physical object)"
* concept[=].property[0].code = #groupedBy
* concept[=].property[=].valueCode = $SCT#257192006
* concept[=].property[+].code = #notSelectable
* concept[=].property[=].valueBoolean = false


Instance: abivahendid-ja-meditsiiniseadmed
InstanceOf: ValueSet
Usage: #example
Title: "Abivahendid ja meditsiiniseadmed"
Description: "An excerpt from a medical devices value set used in Estonian health information system. This example represents a value set that has a hierarchy that does not match the hierarchy of the code system, and therefore needs a code system supplement to add the additional groupings."
* url = "https://fhir.ee/ValueSet/abivahendid-ja-meditsiiniseadmed"
* extension[http://hl7.org/fhir/StructureDefinition/valueset-supplement].valueCanonical = Canonical(abivahendid-ja-meditsiiniseadmed-supplement)
* title = "Abivahendid ja meditsiiniseadmed"
* description = "An excerpt from a medical devices value set used in Estonian health information system. This example represents a value set that has a hierarchy that does not match the hierarchy of the code system, and therefore needs a code system supplement to add the additional groupings."
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:1.3.6.1.4.1.28284.6.2.1.321"
* version = "4"
* name = "AbivahendidJaMeditsiiniseadmed"
* status = #draft
* contact.telecom.system = #email
* experimental = true
* publisher = "TEHIK"
* compose.property[0] = #groupedBy
* compose.property[+] = #notSelectable

* compose.include.system = $SCT
* compose.include.concept[+].code = #257192006
* compose.include.concept[=].display = "Nägemist toetav vahend"
* compose.include.concept[+].code = #50121007
* compose.include.concept[=].display = "Prillid"
* compose.include.concept[+].code = #57368009
* compose.include.concept[=].display = "Kontaktläätsed"
* compose.include.concept[+].code = #264865009
* compose.include.concept[=].display = "Suurendusklaas"
* compose.include.concept[+].code = #414928009
* compose.include.concept[=].display = "Silmaprotees"
* compose.include.concept[+].code = #6012004
* compose.include.concept[=].display = "Kuulmist toetav vahend"
* compose.include.concept[+].code = #469512007
* compose.include.concept[=].display = "Kõrvasisene kuuldeaparaat"
* compose.include.concept[+].code = #467138008
* compose.include.concept[=].display = "Kõrvatagune kuuldeaparaat"
* compose.include.concept[+].code = #43252007
* compose.include.concept[=].display = "Kohleaarimplantaat"
//* compose.include.concept[+].code = #3611000181101 "This should fail - EE edition concept"
