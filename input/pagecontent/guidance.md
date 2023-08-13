
### FHIR Resources | FHIR ressursid

#### CodeSystem

CodeSystems carry information about concepts. Well known big code systems are SNOMED CT, LOINC, ATC, ICD-10, etc. 
But FHIR CodeSystem is not defined by its size. For example, [HL7 Administrative Gender](http://hl7.org/fhir/administrative-gender) has only 4 concepts. 

Read more about [CodeSystem resource](https://hl7.org/fhir/codesystem.html).

In some cases, either for technical reasons or needed by business logic, you need to add information to the base code system. However, this cannot be done unless you are the owner of the original code system. To allow extra information in a code system, a supplement can be used. However, you are only allowed to add information to existing concepts. New codes are not allowed in a supplement.

<img src="codesystem-supplement.png" alt="CodeSystem Supplement" width="800"/>
<br clear="all"/>

CodeSystem supplement does not have its own dedicated resource type. FHIR CodeSystem resource is used for supplements as well. An example of needing a CodeSystem supplement is introducing a custom hierarchy on ValueSet level ([see explanation](migration.html#hierarchy-in-value-sets)).

#### ValueSet 

ValueSet resource takes its content from CodeSystem(s). There can never be a FHIR ValueSet that defines its own codes without referencing a CodeSystem. Therefore, we often see pairs of CodeSystem and ValueSet, where ValueSet simply includes all concepts from the CodeSystem.
A ValueSet can include concepts from two or more different CodeSystems. And also, every CodeSystem has a default URI that represents a ValueSets that contains the whole CodeSystem.

<img src="codesystem-valueset-relationship.png" alt="ValueSets are made of CodeSystem concepts" width="800"/>
<br clear="all"/>

ValueSets in FHIR are very simplistic and lean in content. Dates of inclusion and exclusion of ValueSet members are provided in resource metadata, not for every member separately. Hierarchy and extra properties are not defined inside the ValueSet, but a ValueSet can be expanded so, that it includes some information about its concepts from the CodeSystem. 

Read more about [ValueSet resource](https://hl7.org/fhir/valueset.html)  


#### ConceptMap

ConceptMap resource shows mapping between two ValueSets, and it is by its definition use-case-specific. 
In some cases, mapping might be done from one CodeSystem to another, but technically it is still defined between two ValueSets that represent the content of the CodeSystem. 

<img src="conceptmap-directed.png" alt="ConceptMap is directed" width="800"/>
<br clear="all"/>

Mapping between concepts is usually dependant on the context. For example, consider the following three versions of the RhD Finding value set. We see three sets of codes representing the same idea, but using different codes. We can say that these concepts are equivalent **within this ValueSet**. SNOMED CT concept 165747007 _RhD positive (finding)_ would not equal 10828004 _Positive (qualifier value)_ in any other context, because one represents a specific finding while the other represents a very generic qualifier value.

<img src="conceptmap-contexted.png" alt="ConceptMap works within a context" width="800"/>
<br clear="all"/>

Read more about [ConceptMap resource](https://hl7.org/fhir/conceptmap.html)  


#### NamingSystem

Read more about [NamingSystem resource](https://hl7.org/fhir/namingsystem.html)  

### Available content | Avaldatud sisu

#### SNOMED CT
Terminology server contains the international and Estonian edition of SNOMED CT terminology. Full SNOMED CT content is available for validation or information, also many Estonian value sets are based on SNOMED CT and published as FHIR value sets or SNOMED CT simple reference sets.
The concepts and value sets based on SNOMED CT are freely queriable. Please take into account that it is not possible to download full SNOMED CT from terminology server due to its size. It is possible to query single concepts, list of concepts matching a property or ECL expression, or any value set or concept map that uses SNOMED CT. 

Estonian edition, together its underlying international edition, is updated twice a year: May 30 and November 30. Using full SNOMED CT is free for anyone from Estonia or any other SNOMED member countries. To access the release files, please go to [licence management portal](https://mlds.ihtsdotools.org/#/landing/EE?lang=en) and register.  

More information from **snomed@tehik.ee**. 

#### ICD-10 (RHK-10)
ICD-10 newest Estonian version (also available at [https://rhk.sm.ee/](https://rhk.sm.ee/)) will be available soon.

#### Health information system value sets
Please see Migration chapter to learn more about migrating the content of [Publitseerimiskeskus](https://pub.e-tervis.ee/classifications).

#### Medication and prescription related value sets


### Example queries | Näidispäringud

TEHIK terminology server example queries

[Ontoserver Postman collection](https://documenter.getpostman.com/view/634774/TVsuBmc9) by CSIRO
