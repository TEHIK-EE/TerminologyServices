CodeSystem: AbivahendidJaMeditsiiniseadmedSupplement
Id: abivahendid-ja-meditsiiniseadmed-supplement
Title: "Abivahendid ja meditsiiniseadmed - CodeSystem Supplement"
Description: "Code System Supplement that provides custom hierarchy to be used in a specific value set"

* ^url = "https://fhir.ee/CodeSystem/abivahendid-ja-meditsiiniseadmed-supplement"
* ^version = "4"
* ^status = #draft
* ^compositional = false
* ^content = #supplement
* ^supplements = "http://snomed.info/sct"
* ^versionNeeded = true
* ^experimental = true
* ^publisher = "TEHIK"
* ^date = "2023-07-04T00:00:00.000Z"


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