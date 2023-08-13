Logical: Metadata
Title: "Metadata for code set"
Description: "Klassifikaatori/koodiloendi pass. Logical model for metadata for a codesystem or value set"

* identifier 1..* BackboneElement "Identifiers" "Identifikaatorid"
  * fhirURI 1..1 Identifier "FHIR identifier" "HL7 FHIR URI identifikaator."
  * oid 0..1 Identifier "OID identifier" "ISO OID identifikaator, mida kasutatakse eeskätt CDA dokumentidel."
  * shortID 0..1 string "Short identifier for special use outside FHIR context" "Koodilaadne lühend andmebaasis kasutamiseks. Luuakse automaatselt."
    * ^comment = "Kas see on sama, mis FHIR 'name' element?"

* name 1..* BackboneElement "Name" "Nimetus"
  * title 1..1 string "The most commonly used name (can be an acronym). Preferred name in most settings." "Kõige sagedamini kasutatav nimetus, sh akronüüm. Kuvatakse eelisnimetusena."
    * ^comment = "see nimetus on kahtlane. eriti kuna ta pole kohustuslik, aga peaks olema eelistatult kuvatud." 
  * fullNameEstonian 0..1 string "Official name in Estonian" "Ametlik nimetus eesti keeles"
  * fullNameEnglish 0..1 string "Official name in English" "Ametlik nimetus inglise keeles"
    * ^comment = "names need a better approach, because only one can be official name, and no translated names. However, I think most HL7 codesystems and valuesets, as well as ICD, ICF, might have the problem that the commonly used name is translated into local languages, while the official is in English."
  * machinereadableName 1..1 string "Name for machine-processing and URI creation" "Masintöötluseks sobilik nimi, mida kasutatakse URI identifikaatori loomiseks (eemaldatakse täpitähed, tühikud, erimärgid)."  

* type 1..1 code "Type of terminology asset according to Estonian Statistics Board (classification, value set)" "Statistikaameti jaotusele vastav terminoloogiavara tüüp (st klassifikaator või koodiloend)."

* domain 1..* code "Usage context (healthcare, social care, work, ...)" "Kasutusvaldkond (tervis, sotsiaal, töö, vm)"
* description 1..1 string "Short description" "Lühikirjeldus, mis kirjeldab klassifikaatorit/loendit: selle sisu ja kasutuseesmärki"

* owner 1..1 string "Owner/expert of the content. Takes responsibility for the quality of the content" "Omanik. Vastutab sisu kvaliteedi ja ajakohasuse eest"
* maintainer 1..1 string "Technical maintainer and publisher" "Tehniline haldaja ja avaldaja"
  * ^comment = "Kes statistikaameti ja ravimiameti asjade puhul maintainer oleks? Et kui TEHIK avaldab, siis oleks nagu tema, aga reaalselt haldab neid siiski keegi teine. Võibolla avaldaja eraldi tuua?"

* basedOn 0..* Reference "Source terminology." "Alusklassifikaator."

* relatedTerminologyAsset 0..* BackboneElement "Related terminology that is not technically the source it's directly based on" ""
  * relatedTerminologyReference 0..1 Reference "Related terminology asset's URL" ""
  * relatedTerminologyDescription 0..1 string "Description how this terminology is related"

* guidance 0..* BackboneElement "Guidance related to the terminology asset, textual or referenced" "Juhendmaterjalid teksti või viidetena"
  * guidanceOnUsage 0..1 string "Textual guidance about the usage of the terminology asset. Automated list of usage locations (CDA documents/templates, FHIR IGs/resources)" "Kasutuskohad (vorming, andmeelement) ja kasutusreeglid."
  * guidanceDocuments 0..* url "Links to additional guidance material" "Kodeerimisjuhised, kasutusjuhendid vms"
  * codingPrinciples 0..1 BackboneElement "Short guidance about the structure of the code system (hierarchy, code creation, etc)" "Kodeerimisreeglid"
  * changeManagementInformation 1..1 string "Guidance on change management and release cycles" "Muudatuste halduse sagedus, sh uuendamissagedus ja ajakava"

* relatedAct 0..* BackboneElement "Related legal acts" "Seos õigusaktidega"
  * relatedActURL 0..1 string "URL to the related legal act" "Seotud õigusakti URL Riigi Teatajas"
  * relatedActName 0..1 string "Name of the related legal act" "Seotud õigusakti nimetus" 
  * ^comment = "passis on ette nähtud nimetus ja viide - kas me võime eeldada, et meil on alati viide olemas ja nimetust pole vaja?"
  * relatedActDescription 0..1 string "Explanation about how the documented legal act is related to the terminology asset" "Seotud õigusakti ja selle seose kohta käib sisuline selgitus"

* datePublication 1..1 date "Date the terminology asset was published" "Avaldamise kuupäev"
* dateLastUpdate 1..1 date "Date of the last update" "Viimase muudatuse kuupäev"
* effectivePeriod 0..* Period "Effective dates of the terminology asset version." "Kehtivuse alguse ja lõpu kuupäev versiooni kohta." 
* invalidationDate 0..1 date "?Date of deprecation of the whole terminology asset" "?Otsuse kuupäev või kehtivuse lõpu kuupäev. Täidetakse juhul, kui ei ole enam kehtivat versiooni."

* version 1..1 string "Version" "Versioon. Versiooni number tekib uue versiooni puhul automaatselt ning sellest omakorda tekib versioneerimise ajalugu"
* status 1..1 code "Validity status of the terminology asset" "Kehtivusstaatus"
* replacedBy 0..* Reference "Reference to the new terminology asset that replaces the invalidated asset" "Viide uuele terminoloogiavarale, mis on mõeldud asendama kehtivuse kaotanud terminoloogiavara"
* replaces 0..* Reference "Terminology asset which has been replaced by the new terminology asset" "Viide varem kehtestatud klassifikaatorile/koodiloendile, mille kehtestatav klassifikaator/koodiloend asendab"

* guidanceOnUpdate 0..1 string "Information about the update in case of a new version (reference or short description of impact, transition periods and implementation guidance)" "Muudatuse juurutamise juhised, sh mõjuanalüüs ja üleminekuperiood. Võib olla viide projektilehele."

* comments 0..1 string "Additional textual information" "Muud märkused"

