For each terminology resource a certain set of metadata is defined. Requirements for metadata have been set by the coordination group of eHealth terminologies, that includes experts from TEHIK, Ministry of Social Affairs, Health Fund, and Health Development Institute. 
Please see the [metadata logical model](StructureDefinition-Metadata.html) for full description.

***

Iga loend ja koodisüsteem on varustatud metaandmestikuga. Metaandmete soovitusliku koosseisu on kokku pannud Klassifikaatorite ja koodiloendite koordinatsioonikogu, kuhu kuuluvad kodeeritud terminoloogiate eksperdid TEHIKust, Tervisekassast, Sotsiaalministeeriumist ja Tervise Arengu Instituudist. Metaandmestik moodustab klassifikaatori/koodiloendi passi. Siinses juhendis on metaandmestik avaldatud [loogilise andmemudelina](StructureDefinition-Metadata.html) ning profileeritud vastavate andmeelementidena.


### CodeSystem  

|**id** |For locally defined codesystems [name]-[version], character limit is 64. For externally defined resources, the original id can be retained.|
|**meta.profile** |Minimally HL7 Shareable CodeSystem profile [https://www.hl7.org/fhir/shareablecodesystem.html](https://www.hl7.org/fhir/shareablecodesystem.html). It is expected that all locally defined resources use the profile defined in this implementation guide.|
|**url** |For locally defined codesystems [baseURL]/[CodeSystem]/[name]. For external code systems, use the original URL if it exists.|
|**identifier (OID)** |OID identifier is represented as an URN. Identifier.system is urn:ietf:rfc:3986. Identifier.value in format urn:oid:1.2.3.|  
|**version**| Version according to the current logic. If dates are used, YYYY-MM-DD format is preferred. For numbering, X.Y is preferred, where X is increased in case of content update, and Y is increased in case of insignificant changes (typos in descriptions, guidance texts slightly changed in metadata). For external resources, original versioning is preserved.|  
|**versioningAlgorithm**||
|**name** |Computer-friendly version of the _title_ (whitespaces removed, diacritics and special characters removed). Numbers. capital letters, and "_" permitted.|  
|**title** |Common name of the code system. Human friendly and descriptive. Acronyms are allowed when the code system is more likely to be known by the acronym than the full name. Do not include resource type in the name (e.g 'CodeSystem', 'CS'). SUPPLEMENT? |  
|**otherTitle**|  |
|**status** |Normally a draft until publication, when it is set active.|  
|**experimental** |By default, use 'false'. 'True' may be used for testing and proof of concepts, but these resources should normally not be available in production terminology server.|  
|?**date** |Date of the last publishing.|  
|**publisher** |Usually 'TEHIK'|
|**contact** |Usually 'andmekorraldus@tehik.ee'|  
|**endorser**|Owner's name (organisation or group, preferrably not an individual). |
|**description**| Short description of the resource. (Lühiiseloomustus selgitusfailis; Klassifikaatori kirjeldus PubKeskuses.)| 
|**useContext**||
|**purpose**||
|**codingPrinciples**||
|**changeManagementDescription**|Uuendamissagedus selgitusfailis|
|**valueSet**| ?|
|**property** |Properties should be resused as much as possible. All used properties must be in the value set. Value set uses the properties defined by HL7 (also see the supplement for data types) and locally defined concepts.|  
|**concept**| | 
{:.table-bordered .table-sm}

### ValueSet  

|**id** |For locally defined codesystems [name]-[version], character limit is 64. For externally defined resources, the original id can be retained.|
|**meta.profile** |Minimally HL7 Shareable ValueSet profile [https://www.hl7.org/fhir/shareablevalueset.html](https://www.hl7.org/fhir/shareablevalueset.html). It is expected that all locally defined resources use the profile defined in this implementation guide.|
|**url** |For locally defined valuesets [baseURL]/[ValueSet]/[name]. For external valuesets, use the original URL if it exists.|
|**identifier (OID)** |OID identifier is represented as an URN. Identifier.system is urn:ietf:rfc:3986. Identifier.value in format urn:oid:1.2.3.|  
|**version**| Version according to the current logic. If dates are used, YYYY-MM-DD format is preferred. For numbering, X.Y is preferred, where X is increased in case of content update, and Y is increased in case of insignificant changes (typos in descriptions, guidance texts slightly changed in metadata). For external resources, original versioning is preserved.|  
|**versioningAlgorithm**||
|**name** |Computer-friendly version of the _title_ (whitespaces removed, diacritics and special characters removed). Numbers. capital letters, and "_" permitted.|  
|**title** |Common name of the value set ('Täielik nimetus' selgitusfailis). Human friendly and descriptive. Do not include resource type in the name (e.g 'ValueSet', 'VS').|  
|**status** |Normally a draft until publication, when it is set active.|  
|**experimental** |By default, use 'false'. 'True' may be used for testing and proof of concepts, but these resources should normally not be available in production terminology server.|  
|?**date** |Date of the last publishing.|  
|**publisher** |TEHIK|
|**contact** |andmekorraldus@tehik.ee|
|**endorser**|Owner's name (organisation or group, preferrably not an individual). |  
|**description**| Short description of the resource. (Lühiiseloomustus selgitusfailis.) For CodeSystem supplements, add "Supplement to [CodeSystem.Title]" (eesti keeles?) in the beginning of description.|
|**useContext**|Pick appropriate concept from the value set|
|**purpose**|Selgitusfail - kasutuskoht|
|**codingPrinciples**|For SNOMED CT based value sets "Numeric codes, 6-18 characters long, normally parsed as strings". For others, see Selgitusfail - Koodi numbrite ja tähtede kombinatsioon|
|**changeManagementDescription**|Uuendamissagedus selgitusfailis|
|**compose.property**|Codes of properties that should appear in default expansion (notSelectable, groupedBy/parent, ...)|
|**displayName** |Veerg 'nimetus', v.a juhul, kui selgitusfailis on ette nähtud lühinimetuse veeru kasutamine|
|**compose.include.system**|For SNOMED CT, use Estonian edition "http://snomed.info/sct/11000181102", because some concepts can be authored in the Estonian edition, and concepts may also move from Estonian to International and back. Estonian edition includes Estonian and International releases. Normally, version of the code system should not be specified, especially when very stable content from the code system is used.|
{:.table-bordered .table-sm}


### ConceptMap

### Deprecation rules

|**status** |The status of a deprecated/inactive resource is **Retired**.|
|**version** |The version will remain the same. The resource content does not change, except for _status_ and _description_.|
|**description** |Description should clearly indicate that the resource is retired. Add 'Kehtetu' in front of the description.|
|**effectivePeriod** |End date should be filled in.|
|**replacedBy** |Add reference to the new resource if the new replacement has been created.|