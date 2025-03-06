This guide describes the central FHIR terminology services maintained by Health and Welfare Information Systems Centre (TEHIK). 
Additional guidance in Estonian is available in [TEHIK Teabekeskus portal](https://teabekeskus.tehik.ee/et/teenused/teabekeskuse-teenused/terminoloogiaserver/fhir-terminoloogia-tutvustus).

***

Käesolev juhis kirjeldab keskseid FHIR terminoloogiateenuseid, mida haldab Tervise ja Heaolu Infosüsteemide Keskus.
Põhjalikum eestikeelne juhend on leitav [TEHIKu Teabekeskusest](https://teabekeskus.tehik.ee/et/teenused/teabekeskuse-teenused/terminoloogiaserver/fhir-terminoloogia-tutvustus).


### About | Juhendist
  <table border="0">
  <tr><td><b>In English</b></td><td><b>Eesti keeles</b></td></tr>
  <tr>
  <td>
<p>Central terminology services use FHIR standard, but the services themselves are not restricted to FHIR implementers. Terminology server replaces the old CSV-based publication portal, and is used by the whole eHealth community in Estonia.</p>
<hr>
<p>Implementation Guide contains:</p>
<ul>
  <li>Basic overview of FHIR terminology, including references to base specifications and training materials</li>
  <li>Introduction to Ontoserver</li>
  <li>Basic verview of terminology authoring process</li>
  <li>Description of migration process from old csv-based codesets to FHIR resources</li>
  <li>Logical models and FHIR profiles for publishing terminology assets</li>
  <li>Usage guidance, including basic querying</li>
</ul>
<p></p>
</td>
<td>
<p>Kesksed terminoloogiaserverid on üles ehitatud FHIR standardile, kuid need on kasutamiseks laiemalt kui FHIR teenused. Terminoloogiaserver vahetab välja Publitseerimiskeskuse ning pakub loendite andmeid kõigile Eesti e-tervise arendajatele.</p>
<hr>
<p>Juhend sisaldab:</p>
<ul>
  <li>Lühiülevaade FHIR terminoloogiast, sh viited dokumentatsioonile ja koolitusmaterjalidele</li>
  <li>Ontoserveri tutvustus</li>
  <li>Lühiülevaade terminoloogia loomise ja haldamise kohta</li>
  <li>Andmete migreerimine Publitseerimiskeskusest terminoloogiaserverisse</li>
  <li>Loogilised andmemudelid ja FHIR profiilid terminoloogiaga seotud ressursside avaldamiseks</li>
  <li>Kasutusjuhised, sh peamised päringud</li>
</ul>
</td>
</tr></table>

### Terminology Server | Terminoloogiaserver
Terminology server is a software with a standard FHIR API for distributing terminology resources, validating concepts and display names, and querying terminology. Terminology server allows terminology users to consume the codes and value sets in a standard format without having to know the details of the underlying coding scheme and structure.  

Estonian national FHIR terminology services use Ontoserver instance hosted in TEHIK's infrastructure. The national terminology server contains over 400 value sets and smaller and bigger code systems, including SNOMED CT Estonian+International edition.  
Terminology server has a machine-readable output. Human-readable publication of terminology resources can be found in [Teabekeskus](https://teabekeskus.tehik.ee/et/loendid) (simple overview of value sets) or the authoring tool [Andmekirjelduskeskkond](https://akk.tehik.ee/classifier/landing) (detailed view for all resource types, uses TermX software).

[Ontoserver](https://ontoserver.csiro.au/site/) solution is developed by the Australian e-Health Research Centre, CSIRO. It provides standard FHIR API for maintaining and publishing terminology resources, and supports SNOMED CT, including Expression Constraint Language searches.
Ontoserver licence was obtained through a public procurement process.

  
### References | Viited

#### Specifications| Juhendid
* [FHIR terminoloogia tutvustus](https://teabekeskus.tehik.ee/et/teenused/teabekeskuse-teenused/terminoloogiaserver/fhir-terminoloogia-tutvustus) **In Estonian**
* [FHIR Terminology Module](https://www.hl7.org/fhir/terminology-module.html)
* [FHIR Terminology Services](https://www.hl7.org/fhir/terminology-service.html)
* [FHIR Terminology Services Tutorial by CSIRO](https://youtu.be/Q3qx0jh8x4k)
* [Ontoserver Quick Start](https://ontoserver.csiro.au/docs/6/)

#### Trainings | Koolitused
* [SNOMED CT Terminology Services](https://courses.ihtsdotools.org/product?catalog=TSC): using SNOMED CT terminology with FHIR and native Snowstorm API. 20h self-paced e-learning, free for SNOMED CT member countries (incl Estonia)

#### Community support | Kogukonna tugi
* [FHIR Zulip Chat](https://chat.fhir.org/)
  * Stream [Terminology](https://chat.fhir.org/#narrow/stream/179202-terminology)
  * Stream [Estonian FHIR Community](https://chat.fhir.org/#narrow/stream/389311-Estonian-FHIR-community)
* [HL7 Europe](https://confluence.hl7.org/display/HEU/Terminology)

