<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ServiceRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ServiceRequest</sch:title>
    <sch:rule context="f:ServiceRequest">
      <sch:assert test="count(f:extension[@url = 'http://kl.dk/fhir/common/caresocial/StructureDefinition/RequesterType']) &lt;= 1">extension with URL = 'http://kl.dk/fhir/common/caresocial/StructureDefinition/RequesterType': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://kl.dk/fhir/common/caresocial/StructureDefinition/SubjectConsentToLiaising']) &lt;= 1">extension with URL = 'http://kl.dk/fhir/common/caresocial/StructureDefinition/SubjectConsentToLiaising': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://kl.dk/fhir/common/caresocial/StructureDefinition/MunicipalityCaseNumber']) &lt;= 1">extension with URL = 'http://kl.dk/fhir/common/caresocial/StructureDefinition/MunicipalityCaseNumber': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:authoredOn) &gt;= 1">authoredOn: minimum cardinality of 'authoredOn' is 1</sch:assert>
      <sch:assert test="count(f:requester) &gt;= 1">requester: minimum cardinality of 'requester' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:code</sch:title>
    <sch:rule context="f:ServiceRequest/f:code">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:orderDetail</sch:title>
    <sch:rule context="f:ServiceRequest/f:orderDetail">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:reasonCode</sch:title>
    <sch:rule context="f:ServiceRequest/f:reasonCode">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
