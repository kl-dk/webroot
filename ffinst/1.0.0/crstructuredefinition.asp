<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/StructureDefinition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/StructureDefinition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/StructureDefinition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/StructureDefinition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/StructureDefinition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/StructureDefinition-"+id+".xml");
  else if (id == "KLToolsWHO5ObservationInterest5")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsWHO5ObservationInterest5.html");
  else if (id == "KLToolsCareHeartRate")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsCareHeartRate.html");
  else if (id == "AssociatedConditions")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-AssociatedConditions.html");
  else if (id == "KLToolsWHO5ObservationCalm2")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsWHO5ObservationCalm2.html");
  else if (id == "KLToolsCareEQ5DObservationActivity")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsCareEQ5DObservationActivity.html");
  else if (id == "KLToolsCareEQ5DObservationMobility")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsCareEQ5DObservationMobility.html");
  else if (id == "KLToolsCareEQ5DObservationHygiene")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsCareEQ5DObservationHygiene.html");
  else if (id == "KLToolsCareOxygenSaturation")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsCareOxygenSaturation.html");
  else if (id == "KLToolsCareEQ5DObservationPain")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsCareEQ5DObservationPain.html");
  else if (id == "KLToolsCarePainVAS")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsCarePainVAS.html");
  else if (id == "KLToolsCareConsciousness")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsCareConsciousness.html");
  else if (id == "FindingInformer")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-FindingInformer.html");
  else if (id == "KLToolsQuestionnaireResponse")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsQuestionnaireResponse.html");
  else if (id == "KLToolsCarePainVRS")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsCarePainVRS.html");
  else if (id == "KLToolsCareEQ5DObservationAnxiety")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsCareEQ5DObservationAnxiety.html");
  else if (id == "KLToolsWHO5ObservationActive3")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsWHO5ObservationActive3.html");
  else if (id == "KLToolsQuestionnaire")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsQuestionnaire.html");
  else if (id == "KLToolsCareUrinStix")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsCareUrinStix.html");
  else if (id == "KLToolsCareBodyHeight")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsCareBodyHeight.html");
  else if (id == "KLToolsCareRSS")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsCareRSS.html");
  else if (id == "Technique")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-Technique.html");
  else if (id == "KLToolsWHO5ObservationRested4")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsWHO5ObservationRested4.html");
  else if (id == "KLToolsWHO5ObservationHappy1")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsWHO5ObservationHappy1.html");
  else if (id == "KLToolsCareBloodPressure")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsCareBloodPressure.html");
  else if (id == "KLToolsCareBodyWeight")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsCareBodyWeight.html");
  else if (id == "KLToolsCareRespirationRate")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsCareRespirationRate.html");
  else if (id == "KLToolsCareBodyTemperature")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsCareBodyTemperature.html");
  else if (id == "KLToolsCare6minwalk")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/StructureDefinition-KLToolsCare6minwalk.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/ffinst/StructureDefinition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /ffinst/1.0.0/crstructuredefinition.asp) .
</body>
</html>
