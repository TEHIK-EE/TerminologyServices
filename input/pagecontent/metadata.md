For each terminology resource a certain set of metadata is defined. Requirements for metadata have been set by the coordination group of eHealth terminologies, that includes experts from TEHIK, Ministry of Social Affairs, Health Fund, and Health Development Institute. 
Please see the [metadata logical model](StructureDefinition-Metadata.html) for full description.

***

Iga loend ja koodisüsteem on varustatud metaandmestikuga. Metaandmete soovitusliku koosseisu on kokku pannud Klassifikaatorite ja koodiloendite koordinatsioonikogu, kuhu kuuluvad kodeeritud terminoloogiate eksperdid TEHIKust, Tervisekassast, Sotsiaalministeeriumist ja Tervise Arengu Instituudist. Metaandmestik moodustab klassifikaatori/koodiloendi passi. Siinses juhendis on metaandmestik avaldatud [loogilise andmemudelina](StructureDefinition-Metadata.html) ning profileeritud vastavate andmeelementidena.

### Common rules for all resources

**For externally defined terminology assets (HL7 or other), original metadata is kept for id, url, name, and title. Estonian title can be added.**  
Default baseURL is **https://fhir.ee/**  

|**id**|For locally defined terminology assets, use the title in lowercase, spaces replaced with hyphens (-), characters replaced as follows: ä-a, ö-o, õ-o, ü-y, š-sh, ž-zh, special characters omitted. Character limit is ... 64?|
|**url**|For locally defined terminology assets, use [baseURL]/[resource type]/[id]|
|**name**|For locally defined terminology assets, use the title in PascalCase (all words start with capital letter), remove spaces, characters replaced as follows: ä-a, ö-o, õ-o, ü-y, š-sh, ž-zh, special characters omitted. Numbers and "_" are allowed.|
|**identifier (OID)** |OID identifier is represented as an URN. Identifier.system is urn:ietf:rfc:3986. Identifier.value in format urn:oid:1.2.3. Typically assigned to ValueSets or international CodeSystems.|
|**status** |Normally a draft until publication, when it is set active.|  
|**experimental** |By default, use 'false'. 'True' may be used for testing and proof of concepts, but these resources should normally not be available in production terminology server.| 
|**version**| Version according to the current logic. If dates are used, YYYY-MM-DD format is preferred. For numbering, X.Y is preferred, where X is increased in case of content update, and Y is increased in case of insignificant changes (typos in descriptions, guidance texts slightly changed in metadata). For external resources, original versioning is preserved.|  
|**versioningAlgorithm**||
|**publisher** |Usually 'TEHIK'|
|**contact** |Usually 'andmekorraldus@tehik.ee'|  
|**endorser**|Owner's name (organisation or group, preferrably not an individual).|
{:.table-bordered .table-sm}

### CodeSystem  

|**id** |For regular CodeSystems, see guidance under common rules.  
For CodeSystem supplements, estimate the usage of the supplement. For supplements that are created for one specific ValueSet, use formula "[ValueSet id]-supplement". For independent CodeSystem supplements, use formula "[CodeSystem id]-[scope]".|
|**meta.profile** |Minimally HL7 Shareable CodeSystem profile [https://www.hl7.org/fhir/shareablecodesystem.html](https://www.hl7.org/fhir/shareablecodesystem.html). It is expected that all locally defined resources use the profile defined in this implementation guide.|
|**url** |Follows pattern [baseURL]/[resource type]/[id] - https://fhir.ee/CodeSystem/[id]|
|**title** |Common name of the code system. Human friendly and descriptive. Acronyms are allowed when the code system is more likely to be known by the acronym than the full name. Do not include resource type in the name (e.g 'CodeSystem', 'CS').  
For CodeSystem supplements, use the key word 'Supplement' in the end of the title.
Title is typically in Estonian, and the English translation is in the translation element.|  
|**otherTitle**|Additional name of the CodeSystem in case it is known by names other than the Title.|
|**description**|Short description of the resource. This should be only a few lines of text. (Lühiiseloomustus selgitusfailis; Klassifikaatori kirjeldus PubKeskuses.)| 
|**purpose**|Longer description about the purpose and usage of the CodeSystem. This can include a link to a dedicated web page with more information.|
|**codingPrinciples**|Explain the hierarchy and the structure of the codes. This can include a link to a dedicated web page with more information. "Koodi numbrite ja tähtede kombinatsioon, hierarhia"|
|**changeManagementDescription**|Explain briefly the process of requesting updates, and the release cycles/dates. For local CodeSystems, use standard text "".  Uuendamissagedus selgitusfailis|
|**caseSensitive**|Mark if the **codes** are caseSensitive. This element is true for UCUM, but false for almost all other cases.|
|**content**|In terminology server, content is usually 'complete' or in case of CodeSystem supplement 'supplement'. Other values are more likely to be used in implementation guide context.|
|**property** |Properties should be resused as much as possible. All used properties must be in the value set. Value set uses the properties defined by HL7 (also see the supplement for data types) and locally defined concepts.|  
{:.table-bordered .table-sm}

### ValueSet  

See also guidance under common rules.  
ValueSet that uses a CodeSystem supplement, needs the relevant extension.  

|**meta.profile** |Minimally HL7 Shareable ValueSet profile [https://www.hl7.org/fhir/shareablevalueset.html](https://www.hl7.org/fhir/shareablevalueset.html). It is expected that all locally defined resources use the profile defined in this implementation guide.|
|**url** |Follows pattern [baseURL]/[resource type]/[id] - https://fhir.ee/ValueSet/[id]|
|**identifier (OID)** |When CodeSystem and ValueSet are the same list, OID is assigned to the ValueSet.|    
|**description**| Short description of the resource. (Lühiiseloomustus selgitusfailis.)|
|**useContext**|Pick appropriate concept from the value set|
|**purpose**|Longer description about the purpose and usage of the ValueSet. Selgitusfail - kasutuskoht|
|**codingPrinciples**|For SNOMED CT based value sets "Numeric codes, 6-18 characters long, normally parsed as strings". For others, see Selgitusfail - Koodi numbrite ja tähtede kombinatsioon|
|**changeManagementDescription**|Explain briefly the process of requesting updates. Uuendamissagedus selgitusfailis|
|**compose.property**|Codes of properties that should appear in default expansion (notSelectable, groupedBy/parent, ...)|
|**compose.include.system**|For SNOMED CT, use Estonian edition "http://snomed.info/sct/11000181102", because some concepts can be authored in the Estonian edition, and concepts may also move from Estonian to International and back. Estonian edition includes Estonian and International releases. Normally, version of the code system should not be specified, especially when very stable content from the code system is used.|
{:.table-bordered .table-sm}


### ConceptMap

|**url** |Follows pattern [baseURL]/[resource type]/[id] - https://fhir.ee/ConceptMap/[id]|
|**title** |ConceptMap between ValueSet versions follows pattern "[ValueSet's Estonian title] v[source version]-v[target version] vastendus". ConceptMap between different CodeSystems follows pattern "[Source CodeSystem title] - [Target CodeSystem title] vastendus [scope].
For English titles, 'vastendus' is replaced with 'Concept Map' and source and target titles are also in English.|

### Deprecation rules

|**status** |The status of a deprecated/inactive resource is **Retired**.|
|**version** |The version will remain the same. The resource content does not change, except for _status_ and _description_.|
|**description** |Description should clearly indicate that the resource is retired. Add 'Kehtetu' in front of the description.|
|**effectivePeriod** |End date should be filled in.|
|**replacedBy** |Add reference to the new resource if the new replacement has been created.|