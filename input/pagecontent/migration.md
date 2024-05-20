
TEHIK terminology server aims to re-publish all the terminology assets that have been published in [TEHIK's old publication centre](https://pub.e-tervis.ee/classifications) (no public international access).

### General principles

**CodeSystem vs ValueSet distinction**  
In our Publication Centre, there is often no distinction between code system and value set. While the situation has been clear for large international code systems like ICD-10 or SNOMED CT, the majority of our legacy controlled vocabulary has been published as independent code lists, resulting in re-using same codes (001, 002) with many different meanings across lists. In FHIR, this results in an uncomfortable situation, that all these locally coded lists must technically become FHIR CodeSystems and ValueSets both, and they share the OID. The following diagram describes this basic migration rule: 

<img src="migration.png" alt="Migration rule" width="700"/>
<br clear="all"/>

We have cases where a ValueSet has changed its underlying CodeSystem (local codes switching to SNOMED CT), and the OID has remained the same. Therefore, we can conclude that until now, the OID has been assigned to the ValueSet rather than the CodeSystem. At the same time, this OID is used as an identifier for code system in CDA messaging.
After many considerations, the OIDs have been migrated both to CodeSystem and ValueSet resource, resulting in two objects sharing the OID. This is a borderline case from the point of view of validity, and we would appreciate to know if this is causing any problems to our users. 

**Hierarchy**  
For expressing hierarchy in a code system, property _parent_ is preferred over concepts-in-concepts structure. While terminology server are expected to handle both approaches, using property _parent_ allows us to handle polyhierarchy and monohierarchy the same way. 
Property _parent_ kind of approach is closer to the flat table view which has been used for publishing terminology until now. Also, having hierarchy expressed as a property will allow users to use this property in value set expansion.

Currently every code list includes columns: Parent code (Vanem_kood) and Hierarchy level (Hierarhia_aste). Column 'Hierachy level' will not be migrated, as it is obsolete. Column 'Parent code' will be migrated as property _parent_ in CodeSystem, and _groupedBy_ in CodeSystem supplement, which is contained in the value set. See more about hierarchy in value set below.

**Effective dates and statuses of value set members**  

Status of value set members will not be migrated, because only active value set members will be published in every value set version. It is possible to add status ['deprecated'](http://hl7.org/fhir/extensions/StructureDefinition-valueset-deprecated.html) to a value set member, but it serves as a warning for future changes.

Currently, every locally defined code list has three columns: Valid from (Kehtivuse_alguse_kpv), Valid until (Kehtivuse_lõpu_kpv), and Last updated (Viimane_muudatus_kpv). These columns will not be migrated as the content of a ValueSet. Valid from and Valid until dates will be migrated as effectivePeriod. 'Last updated' column will have no significant meaning after migration, and it will not be migrated. 

### Scope of migration  

The focus of the first migration:
- terminology assets currently published and maintained by TEHIK,
- the latest valid versions of code systems and value sets,
- metadata for the resources,
- migrating existing concept maps between versions,
- guidance on how to switch to new format.

Lower priority activities:
- migrating older versions of value sets,
- migrating older versions of local code systems,
- automate terminology flow from other institutions to TEHIK's terminology server and publish third party terminology in FHIR.

Creating concept maps between all the versions is a manual effort and will take a longer period. Please contact us about special needs of your project.


### Hierarchy in value sets  

FHIR does not allow hierarchy in the value set. However, Estonian code lists have always been used not just for validation, but also for interface terminology, which means that hierarchy and grouper concepts have been a norm.

A concept in the value set can show the properties that have been assigned to it in the code system. Therefore, if the code system has exactly the same hierarchy as the value set, the same hierarchy can be expressed in value set expansion. 
However, for SNOMED CT based value sets, the same approach cannot be used, because the value set's hierarchy may not match the SNOMED CT's complex polyhierarchy. Consider the following excerpt from ... value set:

|Code|Name Estonian|English FSN|Parent code in value set|Direct parent in SNOMED CT|
257192006|Nägemist toetav vahend|Aid to vision (physical object)|||
50121007|Prillid|Eye glasses, device (physical object)|257192006|257192006 Aid to vision|
264865009|Suurendusklaas|Optical near vision magnifier (physical object)|257192006|360288007 Optical near vision aid & 310405008 Magnification device|
414928009|Silmaprotees|Ocular prosthesis (physical object)|257192006|414946003 Ophthalmic prosthesis|
6012004|Kuulmist toetav vahend|Hearing aid, device (physical object)|||
469512007|Kõrvasisene kuuldeaparaat|In-the-ear air-conduction hearing aid (physical object)|6012004|705321004 Air-conduction hearing aid|
467138008|Kõrvatagune kuuldeaparaat|Behind-the-ear air-conduction hearing aid (physical object)|6012004|705321004 Air-conduction hearing aid|
43252007|Kohleaarimplantaat|Cochlear prosthesis, device (physical object)|6012004|43252007 Cochlear prosthesis|
{:.table-bordered .table-sm}

Such situation where the value set subsumption differs from code system subsumption should normally be avoided. However, it is often the reality, and in such cases the code system supplement is created to bridge the gap between code system and the value set.
[CodeSystem Supplement for this case](CodeSystem-abivahendid-ja-meditsiiniseadmed-supplement.html) adds properties:  
- _groupedBy_ to indicate the custom hierarchy for user interface purposes;
- _notSelectable_ to indicate that grouper concepts have an illustrative value and they are not meant to be selected for documenting purposes.

The value set includes these properties as default properties for expansion.  


### Larger CodeSystems  

Large code systems do not follow the common rules of migration. Each of the following code systems is handled individually.

**ICD-10 / RHK-10**  
- ICD-10 international version is not published unless requested for a special purpose.
- ICD-10 Estonian flavour is published as an independent CodeSystem.
- Hierarchy in CodeSystem is represented as nested concepts as well as property "parent". In ValueSet, hierarchy is represented with property "parent" and the hierarchy is flattened.
- Descriptions in Estonian, English, and Latin, as well as all comments are migrated.

**SNOMED CT**  
- Default SNOMED CT version in terminology server is the latest Estonian edition.
- Estonian edition is based on a certain international edition. This international release is also published in terminology server.
- SNOMED CT as a full code system is not downloadable or updatable from terminology server.  
- ValueSets based on SNOMED CT are migrated and published according to the rules for all value sets.

**LOINC**  
- LOINC is not migrated to terminology server in the first phase. 

**NOMESCO Surgical Procedures (NCSP)**  
- Migrated according to general principles. Available as CodeSystem and ValueSet.  
- Estonian and English descriptions, hierarchy provided.

**ATC and other medication related terminologies**  
- ATC will not be migrated in the first phase. While it is possible to make ATC available, the automatic updating from the source system (Ravimiregister) will need to be put in place before being able to provide up-to-date service.
- In later stage, Estonian version of ATC and other Ravimiamet's terminologies will be published with the mapping to international code systems for facilitating crossborder services.

