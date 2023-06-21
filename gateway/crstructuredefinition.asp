<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/StructureDefinition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/StructureDefinition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/StructureDefinition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/StructureDefinition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/StructureDefinition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/StructureDefinition-"+id+".xml");
  else if (id == "klgateway-care-citizen")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/StructureDefinition-klgateway-care-citizen.html");
  else if (id == "klgateway-care-planned-intervention")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/StructureDefinition-klgateway-care-planned-intervention.html");
  else if (id == "klgateway-care-follow-up-encounter-extension")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/StructureDefinition-klgateway-care-follow-up-encounter-extension.html");
  else if (id == "klgateway-care-goal")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/StructureDefinition-klgateway-care-goal.html");
  else if (id == "klgateway-care-encounter")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/StructureDefinition-klgateway-care-encounter.html");
  else if (id == "klgateway-care-follow-up-observation")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/StructureDefinition-klgateway-care-follow-up-observation.html");
  else if (id == "klgateway-care-matter-of-interest-observation")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/StructureDefinition-klgateway-care-matter-of-interest-observation.html");
  else if (id == "klgateway-care-citizens-own-observation")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/StructureDefinition-klgateway-care-citizens-own-observation.html");
  else if (id == "klgateway-care-condition")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/StructureDefinition-klgateway-care-condition.html");
  else if (id == "klgateway-care-delivery-report")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/StructureDefinition-klgateway-care-delivery-report.html");
  else if (id == "klgateway-care-completed-intervention")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/StructureDefinition-klgateway-care-completed-intervention.html");
  else if (id == "klgateway-care-finding-context-at-risk-extension")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/StructureDefinition-klgateway-care-finding-context-at-risk-extension.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/gateway/StructureDefinition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from 1.0-milestone/output/crstructuredefinition.asp) .
</body>
</html>
