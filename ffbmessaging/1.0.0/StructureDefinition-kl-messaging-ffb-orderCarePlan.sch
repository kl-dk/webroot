<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile KLCommonCareSocialCarePlan
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:CarePlan</sch:title>
    <sch:rule context="f:CarePlan">
      <sch:assert test="count(f:extension[@url = 'http://fhir.kl.dk/core/StructureDefinition/MunicipalityCaseNumber']) &lt;= 1">extension with URL = 'http://fhir.kl.dk/core/StructureDefinition/MunicipalityCaseNumber': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://fhir.kl.dk/ffbmessaging/StructureDefinition/kl-messaging-ffb-actingMunicipality']) &lt;= 1">extension with URL = 'http://fhir.kl.dk/ffbmessaging/StructureDefinition/kl-messaging-ffb-actingMunicipality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:author) &gt;= 1">author: minimum cardinality of 'author' is 1</sch:assert>
      <sch:assert test="count(f:addresses) &gt;= 1">addresses: minimum cardinality of 'addresses' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CarePlan/f:addresses</sch:title>
    <sch:rule context="f:CarePlan/f:addresses">
      <sch:assert test="count(f:extension[@url = 'http://fhir.kl.dk/core/StructureDefinition/ConditionRank']) &lt;= 1">extension with URL = 'http://fhir.kl.dk/core/StructureDefinition/ConditionRank': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CarePlan/f:activity/f:detail</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail">
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
