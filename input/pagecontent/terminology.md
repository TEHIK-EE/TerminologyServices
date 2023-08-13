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

There are many types of controlled vocabularies, and the distinction is not always clear. The following explanations highlight certain aspects, but don't provide full definition or an exhaustive classification for terminology assets.

**Code list** (et _koodiloend_) is a simple list of coded concepts to be used in a more or less specific context. Typically, code lists are quite implementation-specific, and used locally. A code list is an ambiguous term in FHIR context, because it can technically conveyed by a CodeSystem or ValueSet resource, or both. Most of Estonian health information system value sets are based on locally defined code lists, and are considered separate CodeSystems in FHIR context, because of collision of codes and concept meanings between different code lists.

**Nomenclature** (et _nomenklatuur_, _sõnastik_) is a controlled list of terms to be used in a certain field of science. Both, SNOMED CT and LOINC are called nomenclatures - they are different in their structure, but both aim to be exhaustive but never complete terminologies for their domain.

**Ontology** (et _ontoloogia_) is a controlled vocabulary where concepts are semantically defined/described through their relationships with other concepts from the same vocabulary. Unlike a thesaurus, an ontology is expected to be machine-readable and computable. The best known ontology is SNOMED CT. For example, for concept 75570004 _Viral pneumonia (disorder)_, we have the information about the parents, but also the following lateral relationships (note, that the relationship attributes are also coded concepts):  
 363698007 _Finding site (attribute)_ = 39607008 _Lung structure (body structure)_,   
 116676008 _Associated morphology (attribute)_ = 707496003 _Inflammation and consolidation (morphologic abnormality)_,  
 370135005 _Pathological process (attribute)_ = 441862004 _Infectious process (qualifier value)_,  
 246075003 _Causative agent (attribute)_ = _49872002 Virus (organism)_  

**Classification** (et _klassifikaator_) is finite list of concepts, designed to suit best for statistical use case, but often used also for clinical documentation. Classification is built on the closed world assumption, and even though they are updated like any other terminology asset, they aim to stay as stable as possible, and are therefore less flexible by design. Classifications inevitably contain so-called residue categories, because all concepts must fall under a category. The best known classifications in healthcare are the ones maintained by WHO: ICD-10 (et RHK-10), ICF (et RFK), ATC. For ICD-11 (et RHK-11), it is important to know, that while mortality and morbidity causes continue to be a classification, the foundation layer is planned to be closer to a nomenclature by nature.

#### Hierarchy

A coded terminology can be a flat list, a simple hierarchy, or a polyhierarchy - each of these approaches have their pros and cons. Most value sets and simple lists of coded elements are represented as flat list. This approach is suitable when the list of concepts is relatively small.
For bigger terminology systems, hierarchy is preferred. Classifications, designed primarily for health statistics, incline to use simple hierarchy (monohierarchy) where each concept can only have one parent. Clinical terminologies allow more flexibility and may use polyhierarchy, where a concept can have multiple parents.

<p> <img src="codesystem-hierarchy.png" alt="Different hierarchies" width="900"/> </p>
<br clear="all"/>

From a technical (FHIR) point of view, monohierarchical parent-child relationshios can be conveyed in a nested structure, where child concepts are defined inside the parent concept. In a polyhierarchical structure, parent-child concept must be defined in a property/attribute.


### Metadata
Our long history of central terminology management has taught us the importance of metadata. Each terminology asset needs a periodic review, content quality control, a responsible decision maker, maintainer, publisher, etc. It is important to have an overview why the value sets were created, how are they intended to be used, who is authorised to update them, and which documents are they relevant for. 

For each terminology asset, certain list of metadata is created (see the logical model in artifacts section of the IG). This metadata is published via terminology server as the terminology resource metadata. The metadata list (et klassifikaatori/koodiloendi pass) has been decided by the eHealth terminology coordination group run by the ministry of social affairs. This group is also responsible for validating requests for new classifications and code lists for national eHealth use cases. eHealth terminology management aims to follow the requirements set by the Statistics Board (Statistikaamet).

Most of TEHIK's value sets follow the same process for updating and publishing, even when the owners of the content differ. Value sets based on large international code systems (SNOMED CT, ATC) are dependent on the release cycles and content management of the underlying terminology systems. 

### Terminology management

While we're working on the process diagrams and new workflows, feel free to ask any questions about health information system code lists from andmekorraldus@tehik.ee  
All [SNOMED CT](https://browser.ihtsdotools.org/?) related questions are always welcome at snomed@tehik.ee  
If you need linguistic help with Estonian clinical terminology, try using the [health dictionary](https://tervisesonastik.tai.ee/) by Health Development Institute (TAI), or send them your question at medterm@tai.ee  

