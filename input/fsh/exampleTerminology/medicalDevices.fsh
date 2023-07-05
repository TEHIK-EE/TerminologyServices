Alias: $SCT = http://snomed.info/sct

CodeSystem: AbivahendidJaMeditsiiniseadmedSupplement
Id: abivahendid-ja-meditsiiniseadmed-supplement
Title: "Abivahendid ja meditsiiniseadmed - CodeSystem Supplement"
Description: "Code System Supplement that provides custom hierarchy to be used in a specific value set"

* ^url = "https://fhir.ee/CodeSystem/abivahendid-ja-meditsiiniseadmed-supplement"
* ^version = "1.0.0"
* ^status = #draft
* ^compositional = false
* ^content = #supplement
* ^supplements = $SCT
* ^versionNeeded = true
* ^experimental = true
* ^publisher = "TEHIK"
* ^date = "2023-07-04T00:00:00.000Z"
* ^property.code = #group
* ^property.type = #code


* #6012004 "Kuulmist toetav vahend" "Hearing aid, device (physical object)"
* #43252007 "Kohleaarimplantaat" "Cochlear prosthesis, device (physical object)"
* #43252007 ^property.code = #group
* #43252007 ^property.valueCode = #6012004
* #50121007 "Prillid" "Eye glasses, device (physical object)"
* #50121007 ^property.code = #group
* #50121007 ^property.valueCode = #257192006
* #57368009 "Kontaktläätsed" "Contact lenses, device (physical object)"
* #57368009 ^property.code = #group
* #57368009 ^property.valueCode = #257192006
* #257192006 "Nägemist toetav vahend" "Aid to vision (physical object)"
* #264865009 "Suurendusklaas" "Optical near vision magnifier (physical object)"
* #264865009 ^property.code = #group
* #264865009 ^property.valueCode = #257192006
* #414928009 "Silmaprotees" "Ocular prosthesis (physical object)"
* #414928009 ^property.code = #group
* #414928009 ^property.valueCode = #257192006
* #467138008 "Kõrvatagune kuuldeaparaat" "Behind-the-ear air-conduction hearing aid (physical object)"
* #467138008 ^property.code = #group
* #467138008 ^property.valueCode = #6012004
* #469512007 "Kõrvasisene kuuldeaparaat" "In-the-ear air-conduction hearing aid (physical object)"
* #469512007 ^property.code = #group
* #469512007 ^property.valueCode = #6012004


ValueSet: MeditsiiniseadmedJaAbivahendidVS
Id: meditsiiniseadmed-ja-abivahendid
Title: "Meditsiiniseadmed ja abivahendid"
Description: "An excerpt from a medical devices value set used in Estonian health information system. This example represents a value set that has a hierarchy that does not match the hierarchy of the code system, and therefore needs a code system supplement to add the additional groupings."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://fhir.ee/ValueSet/meditsiiniseadmed-ja-abivahendid"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:1.3.6.1.4.1.28284.6.2.1.321"
* ^version = "4"
* ^status = #draft
* ^contact.telecom.system = #email
* ^experimental = true
* ^date = "2023-07-04T00:00:00.000Z"
* ^publisher = "TEHIK"
* ^compose.property = "parent"
* $SCT#257192006 "Nägemist toetav vahend"
* $SCT#50121007 "Prillid"
* $SCT#57368009 "Kontaktläätsed"
* $SCT#264865009 "Suurendusklaas"
* $SCT#414928009 "Silmaprotees"
* $SCT#6012004 "Kuulmist toetav vahend"
* $SCT#469512007 "Kõrvasisene kuuldeaparaat"
* $SCT#467138008 "Kõrvatagune kuuldeaparaat"
* $SCT#43252007 "Kohleaarimplantaat"
//* $SCT#3611000181101 "This should fail - EE edition concept"

ValueSet: MeditsiiniseadmedJaAbivahendidVS2
Id: meditsiiniseadmed-ja-abivahendid2
Title: "Meditsiiniseadmed ja abivahendid2"
Description: "Test2 An excerpt from a medical devices value set used in Estonian health information system. This example represents a value set that has a hierarchy that does not match the hierarchy of the code system, and therefore needs a code system supplement to add the additional groupings."
* ^extension[http://hl7.org/fhir/StructureDefinition/valueset-supplement].valueCanonical = Canonical(abivahendid-ja-meditsiiniseadmed-supplement)
* ^url = "https://fhir.ee/ValueSet/meditsiiniseadmed-ja-abivahendid2"
* ^identifier.system = "urn:ietf:rfc:3986"
//* ^identifier.value = "urn:oid:1.3.6.1.4.1.28284.6.2.1.321"
* ^version = "4"
* ^status = #draft
* ^contact.telecom.system = #email
* ^experimental = true
* ^date = "2023-07-04T00:00:00.000Z"
* ^publisher = "TEHIK"
* ^compose.property = "group"

* $SCT#257192006 "Nägemist toetav vahend"
* $SCT#50121007 "Prillid"
* $SCT#57368009 "Kontaktläätsed"
* $SCT#264865009 "Suurendusklaas"
* $SCT#414928009 "Silmaprotees"
* $SCT#6012004 "Kuulmist toetav vahend"
* $SCT#469512007 "Kõrvasisene kuuldeaparaat"
* $SCT#467138008 "Kõrvatagune kuuldeaparaat"
* $SCT#43252007 "Kohleaarimplantaat"
