### General information about terminologies

#### Maintaining terminologies
  
Principles of controlled vocabularies:
- concept orientation (concept code is assigned to the meaning of a concept, not a lexical expression);
- non-redundancy (one concept should only have one code); 
- non-ambiguity (one code should only be used for one concept);
- internal continuity.

In the process of maintaining a controlled vocabulary, the following principles are advised:
- alphanumeric meaningless codes, not strictly restricted in length;
- codes should never be reused, the meaning of coded concept should never change;
- versioning of terminology;
- metadata for authoring (incl updating and deletions);
- mapping between old and new concepts;
- multilingual support;
- flexibility that support changes in the terminology.

More reading on theory:
- Benson, Tim; Grieve, Grahame 2021. Principles of Health Terminology. FHIR, HL7 and SNOMED CT. Fourth Edition. Springer Nature Switzerland AG.
- Cimino, J.J. 1998. Desiderata for controlled Medical Vocabularies in the Twenty-First Century. Methods Inf med. 1998; 37: 394-403. 
- Elkin, Peter L. (ed) 2012. Terminology and Terminological Systems. Springer.

#### Types of terminologies

There are many types of controlled vocabularies, and the distinction is not always clear. The following definitions highlight certain aspects, but don't provide a classification for terminology assets.

**Code list**

**Nomenclature**

**Ontology**

**Classification** 

#### Hierarchy and relationships

A coded terminology can be a flat list, a simple hierarchy, or a polyhierarchy - each of these approaches have their pros and cons. Most value sets and simple lists of coded elements are represented as flat list. This approach is suitable when the list of concepts is relatively small.
For bigger terminology systems, hierarchy is preferred. Classifications, designed primarily for health statistics, incline to use simple hierarchy (monohierarchy) where each concept can only have one parent. Clinical terminologies allow more flexibility and use polyhierarchy, where a concept can have multiple parents.

<p> <img src="codesystem-hierarchy.png" alt="alt text" width="900"/> </p>
<br clear="all"/>


### Metadata | Klassifikaatori/koodiloendi pass

### Terminology management | Loendite haldamine

