<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbreporting/StructureDefinition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbreporting/StructureDefinition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbreporting/StructureDefinition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbreporting/StructureDefinition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbreporting/StructureDefinition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/ffbreporting/StructureDefinition-"+id+".xml");
  else if (id == "kl-reporting-ffb-deliveryReport")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/StructureDefinition-kl-reporting-ffb-deliveryReport.html");
  else if (id == "kl-reporting-ffb-followUp")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/StructureDefinition-kl-reporting-ffb-followUp.html");
  else if (id == "dk-core-kombit-sts-org-identifier")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/StructureDefinition-dk-core-kombit-sts-org-identifier.html");
  else if (id == "kl-reporting-ffb-interventionGoal")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/StructureDefinition-kl-reporting-ffb-interventionGoal.html");
  else if (id == "kl-reporting-ffb-careEvaluation")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/StructureDefinition-kl-reporting-ffb-careEvaluation.html");
  else if (id == "kl-reporting-ffb-citizen")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/StructureDefinition-kl-reporting-ffb-citizen.html");
  else if (id == "kl-reporting-ffb-carePlan")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/StructureDefinition-kl-reporting-ffb-carePlan.html");
  else if (id == "kl-reporting-ffb-serviceRequest")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/StructureDefinition-kl-reporting-ffb-serviceRequest.html");
  else if (id == "kl-reporting-ffb-targetGroup")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/StructureDefinition-kl-reporting-ffb-targetGroup.html");
  else if (id == "kl-reporting-ffb-servicePerformer")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/StructureDefinition-kl-reporting-ffb-servicePerformer.html");
  else if (id == "kl-reporting-ffb-condition")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/StructureDefinition-kl-reporting-ffb-condition.html");
  else if (id == "kl-reporting-ffb-follow-up-date-extension")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/StructureDefinition-kl-reporting-ffb-follow-up-date-extension.html");
  else if (id == "kl-reporting-ffb-municipalityCaseNumber")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/StructureDefinition-kl-reporting-ffb-municipalityCaseNumber.html");
  else if (id == "kl-reporting-ffb-informationGathering")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/StructureDefinition-kl-reporting-ffb-informationGathering.html");
  else if (id == "kl-reporting-ffb-intervention")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/StructureDefinition-kl-reporting-ffb-intervention.html");
  else if (id == "kl-reporting-ffb-followUpEncounter")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/StructureDefinition-kl-reporting-ffb-followUpEncounter.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/StructureDefinition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from ng#1.0.0-milestone/output/crstructuredefinition.asp) .
</body>
</html>
