Logical: Metadata
Title: "Metadata for code set"
Description: "Klassifikaatori/koodiloendi pass. Logical model for metadata for a codesystem or value set"

* identifier 1..* BackboneElement "Identifiers" "Identifikaatorid"
  * fhirURI 1..1 Identifier "FHIR identifier" "HL7 FHIR URI identifikaator."
  * oid 0..1 Identifier "OID identifier" "ISO OID identifikaator, mida kasutatakse eeskätt CDA dokumentidel."

* name 1..* BackboneElement "Name" "Nimetus"
  * titleEstonian 1..1 string "The most commonly used name (can be an acronym). Preferred name in most settings." "Kõige sagedamini kasutatav nimetus, sh akronüüm. Kuvatakse eelisnimetusena." 
  * titleEnglish 0..1 string ""
  * fullNameEstonian 0..1 string "Full name in Estonian if it differs from common name" "Ametlik nimetus eesti keeles"  
  * machinereadableName 1..1 string "Name for machine-processing and URI creation" "Masintöötluseks sobilik nimi, mida kasutatakse URI identifikaatori loomiseks (eemaldatakse täpitähed, tühikud, erimärgid)."  

* classification 0..1 boolean "CodeSystem is classified as classification by Estonian state regulations" "Koodisüsteem on klassifikaator riigi infosüsteemi mõistes"

* domain 1..* code "Usage context (healthcare, social care, work, ...)" "Kasutusvaldkond (tervis, sotsiaal, töö, vm)"
* description 1..1 string "Short description" "Lühikirjeldus, mis kirjeldab klassifikaatorit/loendit: selle sisu ja kasutuseesmärki"

* owner 1..1 string "Owner/expert of the content. Takes responsibility for the quality of the content" "Omanik. Vastutab sisu kvaliteedi ja ajakohasuse eest"
* maintainer 1..1 string "Technical maintainer and publisher" "Tehniline haldaja ja avaldaja"
  * ^comment = "Kes statistikaameti ja ravimiameti asjade puhul maintainer oleks? Et kui TEHIK avaldab, siis oleks nagu tema, aga reaalselt haldab neid siiski keegi teine. Võibolla avaldaja eraldi tuua?"

* basedOn 0..* Reference "Source terminology." "Alusklassifikaator."

* relatedTerminologyAsset 0..* BackboneElement "Related terminology that is not technically the source it's directly based on" ""
  * reference 0..1 Reference "Related terminology asset's URL" ""
  * description 0..1 string "Description how this terminology is related"

* guidance 0..* BackboneElement "Guidance related to the terminology asset, textual or referenced" "Juhendmaterjalid teksti või viidetena"
  * usage 0..1 string "Textual guidance about the usage of the terminology asset. Automated list of usage locations (CDA documents/templates, FHIR IGs/resources)" "Kasutuskohad (vorming, andmeelement) ja kasutusreeglid."
  * manual 0..* url "Links to additional guidance material" "Kodeerimisjuhised, kasutusjuhendid vms"
  * codingPrinciples 0..1 BackboneElement "Short guidance about the structure of the code system (hierarchy, code creation, etc)" "Kodeerimisreeglid"
  * changeManagementInformation 1..1 string "Guidance on change management and release cycles" "Muudatuste halduse sagedus, sh uuendamissagedus ja ajakava"

* relatedAct 0..* BackboneElement "Related legal acts" "Seos õigusaktidega"
  * url 0..1 uri "URL to the related legal act" "Seotud õigusakti URL Riigi Teatajas"
  * name 0..1 string "Name of the related legal act" "Seotud õigusakti nimetus" 
  * description 0..1 string "Explanation about how the documented legal act is related to the terminology asset" "Seotud õigusakti ja selle seose kohta käib sisuline selgitus"

* datePublication 1..1 date "Date the terminology asset was published" "Avaldamise kuupäev"
* dateLastUpdate 1..1 date "Date of the last update" "Viimase muudatuse kuupäev"
* effectivePeriod 0..* Period "Effective dates of the terminology asset version." "Kehtivuse alguse ja lõpu kuupäev versiooni kohta." 
* invalidationDate 0..1 date "?Date of deprecation of the whole terminology asset" "?Otsuse kuupäev või kehtivuse lõpu kuupäev. Täidetakse juhul, kui ei ole enam kehtivat versiooni."

* version 0..1 string "Version" "Versioon. Versiooni number tekib uue versiooni puhul automaatselt ning sellest omakorda tekib versioneerimise ajalugu"
* status 1..1 code "Validity status of the terminology asset" "Kehtivusstaatus"
* replacedBy 0..* Reference "Reference to the new terminology asset that replaces the invalidated asset" "Viide uuele terminoloogiavarale, mis on mõeldud asendama kehtivuse kaotanud terminoloogiavara"
* replaces 0..* Reference "Terminology asset which has been replaced by the new terminology asset" "Viide varem kehtestatud klassifikaatorile/koodiloendile, mille kehtestatav klassifikaator/koodiloend asendab"
* guidanceOnUpdate 0..1 string "Information about the update in case of a new version (reference or short description of impact, transition periods and implementation guidance)" "Muudatuse juurutamise juhised, sh mõjuanalüüs ja üleminekuperiood. Võib olla viide projektilehele."

* comments 0..1 string "Additional textual information" "Muud märkused"

