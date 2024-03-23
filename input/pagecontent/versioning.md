### Every object is its version

In FHIR, there is no main object for a ValueSet or CodeSystem. Every FHIR resource is a version as such. The main/parent object of these versions is an abstract object that does not exist in the server.  

<img src="versioning1.JPG" alt="Every resource is its version"/>
<br clear="all"/>

For example, if we have resources CodeSystem/RHK10\-\-8 and CodeSystem/RHK10\-\-9. These would be version 8 and 9 of code system RHK10 (ICD-10). We can these resources are different versions of the same CodeSystem, because they share the same values for data elements: **CodeSystem.url** and **CodeSystem.name**.

Each version has its own **id** and **effectivePeriod**. The rest of the metadata may or may not change through the lifecycle of a terminology resource. Id of the resource can be any unique character combination that follows the rules provided in the FHIR standard. In TEHIK's terminology server, the id contains the abstract object's name and the version number, separated by two dashes: *apgari-komponendid\-\-2.0.0*.

All resources that are primarily published in TEHIK FHIR terminology server, use the namespace https://fhir.ee/. Organisation specific namespaces are avoided as the responsible organisation or its name might change, but changing the canonical URL would cause a huge disruption in services. 

### FHIR URI versus OID

OIDs are typically not used in FHIR, and the main identifier for a code system or a value set is in the **url** element. 

However, the same value sets and code systems are also used in CDA and V3, so all migrated terminology resources carry OID in the **identifier** element. The old way of publishing did not  distinguish code systems from value sets, and for that reason the OIDs are added to the CodeSystem resource as well as related ValueSet resource. This is done in order to simplify the transition from old system to new. However, this approach is not logically correct, because two different objects should not carry the same OID. Please contact us if this causes any issues in your FHIR tooling.

Version OIDs are also provided in the **identifier** element with **type** version.

<img src="oid-url.JPG" alt="Relationship between OID and URL"/>
<br clear="all"/> 

In FHIR terminology resources, business version is provided in the **version** element.
Also, there is an element **versionId** that is inherited from **Resource.Meta** data type, and this carries a server side version of the specific resource. This element should be ignored in most cases.

To track any server-side change, **lastUpdated** element can be used. All changes that are in any way relevant to terminology consumers shall be communicated through semantic versioning and increasing a version number.  


### Semantic versioning

Since launching the FHIR terminology services, most code systems and value sets move to semantic versioning. This means, that if the version number in the old system was 2, and the OID of that version was OID.2, the business version in FHIR is 2.0.0.

Every change will trigger a new version in FHIR, but only major new version trigger the increase of OID version number. For example:

* **2.0.0** corresponds to OID.**2**
* **2.0.2** corresponds to OID.**2**
* **2.1.0** corresponds to OID.**2**
* **3.0.0** corresponds to OID.**3**

### Types of change 

All changes trigger a new version number in FHIR. Semantic version number roughly communicates the type of the change and its impact to validation and usability. 

|Digit|Change type|Impact|Example|
|----|--------|---------|-----------|
|**First**|Major change|Update required. Not updating would result in validation errors of FHIR messages.|1.0.0 -> 2.0.0. Adding/removing concepts, changing display names, hierarchy change in classifications.|
|**Second**|Medium change|Update is recommended. Not updating would probably not result in validation errors, but it may have an impact on display/usage.|1.0.0 -> 1.1.0. Adding or changing properties (including informative hierarchy), adding/changing synonyms or definitions, adding comments.|
|**Third**|Minor change|Update is optional, often unnecessery.|1.0.0 -> 1.0.1.Changing descriptive metadata: publisher's contact details, references to guidance materials, etc. No changes in content.|

Only the first digit change (major change) triggers issuing a new version OID.

### Exceptions  

Code systems authored outside our tooling or having a history of using date as a version will continue to use the same versioning system.

Extra attention should be turned to SNOMED CT versioning. In short communication SNOMED CT versions are usually distinguished by the release date. However, in FHIR messaging, Estonian edition of SNOMED CT is considered a version on its own (*"version": "http://snomed.info/sct/11000181102"*), and a specific version of Estonian edition adds a date as a version of this version (*"version": "http://snomed.info/sct/11000181102/version/20230530"*). 

