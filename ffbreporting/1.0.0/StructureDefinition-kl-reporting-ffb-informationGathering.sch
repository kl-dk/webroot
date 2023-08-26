<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ClinicalImpression
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ClinicalImpression</sch:title>
    <sch:rule context="f:ClinicalImpression">
      <sch:assert test="count(f:implicitRules) &lt;= 0">implicitRules: maximum cardinality of 'implicitRules' is 0</sch:assert>
      <sch:assert test="count(f:language) &lt;= 0">language: maximum cardinality of 'language' is 0</sch:assert>
      <sch:assert test="count(f:contained) &lt;= 0">contained: maximum cardinality of 'contained' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://fhir.kl.dk/core/StructureDefinition/BasedOnServiceRequest']) &gt;= 1">extension with URL = 'http://fhir.kl.dk/core/StructureDefinition/BasedOnServiceRequest': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://fhir.kl.dk/core/StructureDefinition/BasedOnServiceRequest']) &lt;= 1">extension with URL = 'http://fhir.kl.dk/core/StructureDefinition/BasedOnServiceRequest': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:statusReason) &lt;= 0">statusReason: maximum cardinality of 'statusReason' is 0</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:description) &lt;= 0">description: maximum cardinality of 'description' is 0</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 0">encounter: maximum cardinality of 'encounter' is 0</sch:assert>
      <sch:assert test="count(f:effective[x]) &gt;= 1">effective[x]: minimum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:date) &lt;= 0">date: maximum cardinality of 'date' is 0</sch:assert>
      <sch:assert test="count(f:assessor) &lt;= 0">assessor: maximum cardinality of 'assessor' is 0</sch:assert>
      <sch:assert test="count(f:previous) &lt;= 0">previous: maximum cardinality of 'previous' is 0</sch:assert>
      <sch:assert test="count(f:problem) &lt;= 0">problem: maximum cardinality of 'problem' is 0</sch:assert>
      <sch:assert test="count(f:investigation) &lt;= 1">investigation: maximum cardinality of 'investigation' is 1</sch:assert>
      <sch:assert test="count(f:protocol) &lt;= 0">protocol: maximum cardinality of 'protocol' is 0</sch:assert>
      <sch:assert test="count(f:summary) &lt;= 0">summary: maximum cardinality of 'summary' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ClinicalImpression/f:extension</sch:title>
    <sch:rule context="f:ClinicalImpression/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ClinicalImpression/f:code</sch:title>
    <sch:rule context="f:ClinicalImpression/f:code">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ClinicalImpression/f:investigation/f:code</sch:title>
    <sch:rule context="f:ClinicalImpression/f:investigation/f:code">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ClinicalImpression/f:finding</sch:title>
    <sch:rule context="f:ClinicalImpression/f:finding">
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:itemCodeableConcept) &lt;= 0">itemCodeableConcept: maximum cardinality of 'itemCodeableConcept' is 0</sch:assert>
      <sch:assert test="count(f:basis) &lt;= 0">basis: maximum cardinality of 'basis' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
