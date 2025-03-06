
### FHIR Resources | FHIR ressursid

**Eestikeelne lisainfo, videoloengud ja näidispäringud leiad [TEHIKu Teabekeskusest](https://teabekeskus.tehik.ee/et/teenused/teabekeskuse-teenused/terminoloogiaserver/fhir-terminoloogia-tutvustus).**


#### CodeSystem

CodeSystems carry information about concepts. Well known big code systems are SNOMED CT, LOINC, ATC, ICD-10 (RHK-10), etc. 
However, CodeSystems don't have to be big, for example, [HL7 Administrative Gender](http://hl7.org/fhir/administrative-gender) has only 4 concepts. 

Read more about [CodeSystem resource](https://hl7.org/fhir/codesystem.html).

In some cases, either for technical reasons or needed by business logic, you need to add information to the base code system. However, this cannot be done unless you are the owner of the original code system. To allow extra information in a code system, a supplement can be used. However, you are only allowed to add information to existing concepts. New codes are not allowed in a supplement.

<img src="codesystem-supplement.png" alt="CodeSystem Supplement" width="800"/>
<br clear="all"/>

CodeSystem supplement does not have its own dedicated resource type. FHIR CodeSystem resource is used for supplements as well. An example of needing a CodeSystem supplement is introducing a custom hierarchy on ValueSet level ([see explanation](migration.html#hierarchy-in-value-sets)).

#### ValueSet 

ValueSet resource takes its content from CodeSystem(s). There can never be a FHIR ValueSet that defines its own codes without referencing a CodeSystem. Therefore, we often see pairs of CodeSystem and ValueSet, where ValueSet simply includes all concepts from the CodeSystem.
A ValueSet can include concepts from two or more different CodeSystems. And also, every CodeSystem has a default URI that represents a ValueSet that contains the whole CodeSystem.

<img src="codesystem-valueset-relationship.png" alt="ValueSets are made of CodeSystem concepts" width="800"/>
<br clear="all"/>

ValueSets in FHIR are very simplistic and lean in content. Dates of inclusion and exclusion of ValueSet members are provided in resource metadata, not for every member separately. Hierarchy and extra properties are not defined inside the ValueSet, but a ValueSet can be expanded so, that it includes some information about its concepts from the CodeSystem. 

Read more about [ValueSet resource](https://hl7.org/fhir/valueset.html)  


#### ConceptMap

ConceptMap resource shows mapping between two ValueSets, and it often use-case-specific. 
In some cases, mapping might be done from one CodeSystem to another. 

<img src="conceptmap-directed.png" alt="ConceptMap is directed" width="800"/>
<br clear="all"/>

Mapping between concepts is usually dependant on the context. For example, consider the following three versions of the RhD Finding value set. We see three sets of codes representing the same idea, but using different codes. We can say that these concepts are equivalent **within this ValueSet**. SNOMED CT concept 165747007 _RhD positive (finding)_ would not equal 10828004 _Positive (qualifier value)_ in any other context, because one represents a specific finding while the other represents a very generic qualifier value.

<img src="conceptmap-contexted.png" alt="ConceptMap works within a context" width="800"/>
<br clear="all"/>

Read more about [ConceptMap resource](https://hl7.org/fhir/conceptmap.html)  

TEHIK terminology server contains a few ConceptMaps. In the future, transitions from one code system to another will be described using ConceptMap resource.

#### NamingSystem

Read more about [NamingSystem resource](https://hl7.org/fhir/namingsystem.html)  
In the first phase, NamingSystems are not in use in TEHIK terminology server.


### Example queries | Näidispäringud

* [TEHIK terminology server example queries](https://teabekeskus.tehik.ee/et/teenused/teabekeskuse-teenused/terminoloogiaserver/fhir-terminoloogia-tutvustus)  

* [Ontoserver Postman collection](https://www.postman.com/jimsteel/ontoserver/collection/k4gv6q6/ontoserver-6-example-fhir-terminology-requests) by CSIRO  

