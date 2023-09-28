<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile DkCoreCondition
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Condition</sch:title>
    <sch:rule context="f:Condition">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/condition-dueTo']) &lt;= 0">extension with URL = 'http://hl7.org/fhir/StructureDefinition/condition-dueTo': maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.dk/fhir/core/StructureDefinition/ConditionLastAssertedDate']) &lt;= 0">extension with URL = 'http://hl7.dk/fhir/core/StructureDefinition/ConditionLastAssertedDate': maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.dk/fhir/core/StructureDefinition/NotFollowedAnymore']) &lt;= 0">extension with URL = 'http://hl7.dk/fhir/core/StructureDefinition/NotFollowedAnymore': maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:clinicalStatus) &gt;= 1">clinicalStatus: minimum cardinality of 'clinicalStatus' is 1</sch:assert>
      <sch:assert test="count(f:category) &lt;= 0">category: maximum cardinality of 'category' is 0</sch:assert>
      <sch:assert test="count(f:severity) &lt;= 0">severity: maximum cardinality of 'severity' is 0</sch:assert>
      <sch:assert test="count(f:bodySite) &lt;= 0">bodySite: maximum cardinality of 'bodySite' is 0</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 0">encounter: maximum cardinality of 'encounter' is 0</sch:assert>
      <sch:assert test="count(f:onset[x]) &lt;= 0">onset[x]: maximum cardinality of 'onset[x]' is 0</sch:assert>
      <sch:assert test="count(f:abatement[x]) &lt;= 0">abatement[x]: maximum cardinality of 'abatement[x]' is 0</sch:assert>
      <sch:assert test="count(f:recordedDate) &lt;= 0">recordedDate: maximum cardinality of 'recordedDate' is 0</sch:assert>
      <sch:assert test="count(f:recorder) &lt;= 0">recorder: maximum cardinality of 'recorder' is 0</sch:assert>
      <sch:assert test="count(f:asserter) &lt;= 0">asserter: maximum cardinality of 'asserter' is 0</sch:assert>
      <sch:assert test="count(f:stage) &lt;= 0">stage: maximum cardinality of 'stage' is 0</sch:assert>
      <sch:assert test="count(f:evidence) &lt;= 0">evidence: maximum cardinality of 'evidence' is 0</sch:assert>
      <sch:assert test="count(f:note) &lt;= 0">note: maximum cardinality of 'note' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Condition/f:code/f:coding</sch:title>
    <sch:rule context="f:Condition/f:code/f:coding">
      <sch:assert test="count(f:version) &lt;= 0">version: maximum cardinality of 'version' is 0</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
      <sch:assert test="count(f:version) &lt;= 0">version: maximum cardinality of 'version' is 0</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
