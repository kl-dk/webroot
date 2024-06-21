<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/StructureDefinition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/StructureDefinition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/StructureDefinition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/StructureDefinition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/StructureDefinition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/children/StructureDefinition-"+id+".xml");
  else if (id == "KLGatewayChildrenQuestionnaire")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-KLGatewayChildrenQuestionnaire.html");
  else if (id == "klgateway-children-intervention")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-intervention.html");
  else if (id == "klgateway-children-hearing")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-hearing.html");
  else if (id == "klgateway-children-delivery-report")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-delivery-report.html");
  else if (id == "klgateway-children-parent-social-status")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-parent-social-status.html");
  else if (id == "klgateway-children-exam-result")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-exam-result.html");
  else if (id == "klgateway-children-physical-activity")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-physical-activity.html");
  else if (id == "klgateway-children-headcircum")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-headcircum.html");
  else if (id == "klgateway-children-nutrition")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-nutrition.html");
  else if (id == "klgateway-children-citizen")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-citizen.html");
  else if (id == "BasedOnInterventionExtension")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-BasedOnInterventionExtension.html");
  else if (id == "klgateway-children-indicator")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-indicator.html");
  else if (id == "klgateway-children-bodyweight")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-bodyweight.html");
  else if (id == "klgateway-children-passive-smoking")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-passive-smoking.html");
  else if (id == "klgateway-children-bodyheight")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-bodyheight.html");
  else if (id == "klgateway-children-parent-mental-status")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-parent-mental-status.html");
  else if (id == "klgateway-children-sleep")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-sleep.html");
  else if (id == "klgateway-children-motor-function")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-motor-function.html");
  else if (id == "klgateway-children-nicotine")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-nicotine.html");
  else if (id == "klgateway-children-questionnaire-response")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-questionnaire-response.html");
  else if (id == "klgateway-children-location")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-location.html");
  else if (id == "klgateway-children-related-parent")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-related-parent.html");
  else if (id == "klgateway-children-social-support-network")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-social-support-network.html");
  else if (id == "klgateway-children-sight")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-sight.html");
  else if (id == "FindingInformer")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-FindingInformer.html");
  else if (id == "klgateway-children-feeding-observation")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-feeding-observation.html");
  else if (id == "klgateway-children-parent-relationship")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-parent-relationship.html");
  else if (id == "klgateway-children-social-interaction")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-social-interaction.html");
  else if (id == "klgateway-children-encounter")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-encounter.html");
  else if (id == "klgateway-children-communication")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/StructureDefinition-klgateway-children-communication.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/children/StructureDefinition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \children\2.0.1\crstructuredefinition.asp) .
</body>
</html>
