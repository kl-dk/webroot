<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile KLCommonCareSocialGoal
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Goal</sch:title>
    <sch:rule context="f:Goal">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/goal-relationship']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/goal-relationship': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Goal/f:extension</sch:title>
    <sch:rule context="f:Goal/f:extension">
      <sch:assert test="count(f:extension[@url = 'type']) &gt;= 1">extension with URL = 'type': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'type']) &lt;= 1">extension with URL = 'type': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'target']) &gt;= 1">extension with URL = 'target': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'target']) &lt;= 1">extension with URL = 'target': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Goal/f:target</sch:title>
    <sch:rule context="f:Goal/f:target">
      <sch:assert test="count(f:measure) &gt;= 1">measure: minimum cardinality of 'measure' is 1</sch:assert>
      <sch:assert test="count(f:measure) &gt;= 1">measure: minimum cardinality of 'measure' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Goal/f:addresses</sch:title>
    <sch:rule context="f:Goal/f:addresses">
      <sch:assert test="count(f:extension[@url = 'http://fhir.kl.dk/core/StructureDefinition/ConditionRank']) &lt;= 1">extension with URL = 'http://fhir.kl.dk/core/StructureDefinition/ConditionRank': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Goal/f:outcomeCode</sch:title>
    <sch:rule context="f:Goal/f:outcomeCode">
      <sch:assert test="count(f:extension[@url = 'http://fhir.kl.dk/core/StructureDefinition/MatterOfInterestInformer']) &lt;= 1">extension with URL = 'http://fhir.kl.dk/core/StructureDefinition/MatterOfInterestInformer': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
