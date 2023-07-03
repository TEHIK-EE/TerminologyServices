Logical: Metadata
Title: "Metadata for code set"
Description: "Klassifikaatori/koodiloendi pass. Logical model for metadata for a codesystem or value set"

* identifier 1..* BackboneElement "Identifiers" ""
  * fhirURI 1..1 Identifier "FHIR identifier" ""
  * oid 0..1 Identifier "OID identifier" ""
  * shortID 1..1 Identifier "?Short identifier for special use" "Koodilaadne lühend andmebaasis kasutamiseks. Luuakse automaatselt."
    * ^comment = "ei ole kindel selle lühinime/lühiidentifikaatori vajaduses"

* name 1..* BackboneElement "Name" "Nimetus"
  * officialName 1..1 string "Official name" "Ametlik/pikk nimetus eesti keeles"
  * englishName 0..1 string "?English name" "Ametlik nimetus inglise keeles"
    * ^comment = "names need a better approach, because only one can be official name, and no translated names. However, I think most HL7 codesystems and valuesets, as well as ICD, ICF, might have the problem that the commonly used name is translated into local languages, while the official is in English."
  * commonName 0..1 string "?User-friendly name. Commonly used name or acronym understandable for human users" "Kõige sagedamini kasutatav nimetus, sh akronüüm. Kuvatakse eelisnimetusena."
    * ^comment = "see nimetus on kahtlane. eriti kuna ta pole kohustuslik, aga peaks olema eelistatult kuvatud."

* type 1..1 code "?Type of terminology asset (classification, value set)" "Tüüp (klassifikaator, koodiloend)."
  * ^comment = "ilmselt oleks siin tarvis aru saada eesmärgist ja tekitada loendi tüübi loend."
* version 1..1 string "Version" "Versioon. Versiooni number tekib uue versiooni puhul automaatselt ning sellest omakorda tekib versioneerimise ajalugu"

* basedOn 0..* BackboneElement "Source terminology" "Alusklassifikaator"
  * basedOnReference 0..* Reference "Reference to the source terminology" "Viide alusklassifikaatorile"
  * basedOnName 0..* string "Name of the source terminology" "Alusklassifikaatori nimetus"
  * basedOnLocation 0..* string "Reference to the web page or other similar source about the source terminology" "Viide alusklassifikaatorile (veebileht, algallikas)"
* domain 1..* code "Usage context (healthcare, social care, work, ...)" "Kasutusvaldkond (tervis, sotsiaal, töö, vm)"
* description 1..1 string "Short description" "Lühikirjeldus, mis kirjeldab klassifikaatorit/loendit: selle sisu ja kasutuseesmärki"

* owner 1..1 string "Owner/expert of the content. Takes responsibility for the quality of the content" "Omanik. Vastutab sisu kvaliteedi ja ajakohasuse eest"
* maintainer 1..1 string "Technical maintainer and publisher" "?Tehniline haldaja/avaldaja"
  * ^comment = "Kes statistikaameti ja ravimiameti asjade puhul maintainer oleks? Et kui TEHIK avaldab, siis oleks nagu tema, aga reaalselt haldab neid siiski keegi teine. Võibolla avaldaja eraldi tuua?"

* changeManagementInformation 1..1 string "Guidance on change management and release cycles" "Muudatuste halduse sagedus, sh uuendamissagedus ja ajakava"

* relatedAct 0..* BackboneElement "Related legal acts" "Seos õigusaktidega"
  * relatedActURL 0..1 string "URL to the related legal act" "Seotud õigusakti URL Riigi Teatajas"
  * relatedActName 0..1 string "Name of the related legal act" "Seotud õigusakti nimetus" 
  * ^comment = "passis on ette nähtud nimetus ja viide - kas me võime eeldada, et meil on alati viide olemas ja nimetust pole vaja?"
  * relatedActDescription 0..1 string "Explanation about how the documented legal act is related to the terminology asset" "Seotud õigusakti ja selle seose kohta käib sisuline selgitus"

* relatedTerminologyAsset 0..* BackboneElement "Related terminology that is not technicall the source it's directly based on" ""
  * relatedTerminologyIdentifier 0..1 string "Related terminology asset's URL" ""
  * relatedTerminologyDescription 1..1 string "Description how the related terminology is related to the temrinology asset"

* firstPublicationDate 1..1 date "? Date the terminology asset was first published" ""
  * ^comment = "I would remove it"

* dateLastUpdate 1..1 date "Date of the last update" ""
* status 1..1 code "Validity status of the terminology asset" "Kehtivusstaatus"

* guidanceOnUpdate 0..* BackboneElement "?Information about the update in case of a new version" "Muudatuse "
  * implementationGuidance 0..1 string "?Guidance material for implementing the changes" "Muudatusega seotud juhendmaterjal"
  * impactAnalysis 0..1 string "?Explanation of the impact of the change" "Muudatuste mõjuanalüüs"
  * transitionPeriod 0..1 string "?Period during which new changes have to be implemented" "Üleminekuperiood, mille jooksul tuleb uus versioon kasutusele võtta"
  * implementationDeadline 0..1 date "? Mandatory deadline for implementing the terminology asset" "Ülemineku tähtaeg, mis ajaks tuleb uus versioon kasutusele võtta"
  * ^comment = "does not really make sense to have any of it in here"

* guidanceOnUsage 0..1 string "Textual guidance about the usage of the terminology asset. Automated list of usage locations (CDA documents/templates, FHIR IGs/resources)" "Kasutuskohad (vorming, andmeelement) ja kasutusreeglid."
* guidanceDocuments 0..* url "?Links to additional guidance material" "Kodeerimisjuhised, kasutusjuhendid vms"
  * ^comment = "Ei tundu passi tasandi info. Täidame väga väheste koodisüsteemide puhul ja neile on plaanis teha eraldi teemalehed."

* codingPrinciples 0..1 BackboneElement "Short guidance the structure of the code system" "Kodeerimisreeglid"
  * hierarchy 1..1 boolean "Concepts have hierarchical relationships" "Hierarhiline ülesehitus"
  * codeStructure 0..1 string "Basic description about how codes are produced, if they carry additional meaning, the length and type of codes." "Koodide/kodeeringu ülesehituse, tähenduslikkuse ja kasutuse selgitus"

* replaces 0..* BackboneElement "Terminology asset which has been replaced by the new terminology asset" "Viide varem kehtestatud klassifikaatorile/koodiloendile, mille kehtestatav klassifikaator/koodiloend asendab"
  * replacesReference 0..* Reference "Reference to the replaced terminology asset" ""
  * replacesDescription 0..1 string "Text description of what has been replaced by this terminology asset if not directly referencable" "Tekstiline kirjeldus selle kohta, mida käesolev loend asendab"
* invalidationDate 0..1 date "Date of deprecation of the whole terminology asset" "?Otsuse kuupäev või kehtivuse lõpu kuupäev. Täidetakse juhul, kui ei ole enam kehtivat versiooni."
* replacedBy 0..* Reference "Reference to the new terminology asset that replaces the invalidated asset" "?Koordinatsioonikogu/juhtrühma otsuse kuupäev, millal klassifikaator/ koodiloend kehtetuks tunnistati"

* comments 0..1 string "?Additional textual information" "Muud märkused"

