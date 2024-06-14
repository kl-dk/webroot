<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/StructureDefinition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/StructureDefinition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/StructureDefinition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/StructureDefinition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/StructureDefinition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/StructureDefinition-"+id+".xml");
  else if (id == "DeliveryType")
    Response.Redirect("http://fhir.kl.dk/rehab/2.0.0/StructureDefinition-DeliveryType.html");
  else if (id == "klgateway-140-care-plan")
    Response.Redirect("http://fhir.kl.dk/rehab/2.0.0/StructureDefinition-klgateway-140-care-plan.html");
  else if (id == "klgateway-140-organization")
    Response.Redirect("http://fhir.kl.dk/rehab/2.0.0/StructureDefinition-klgateway-140-organization.html");
  else if (id == "PreconditionDate")
    Response.Redirect("http://fhir.kl.dk/rehab/2.0.0/StructureDefinition-PreconditionDate.html");
  else if (id == "klgateway-140-planned-intervention")
    Response.Redirect("http://fhir.kl.dk/rehab/2.0.0/StructureDefinition-klgateway-140-planned-intervention.html");
  else if (id == "BasedOnServiceRequestExtension")
    Response.Redirect("http://fhir.kl.dk/rehab/2.0.0/StructureDefinition-BasedOnServiceRequestExtension.html");
  else if (id == "BasedOnCarePlanExtension")
    Response.Redirect("http://fhir.kl.dk/rehab/2.0.0/StructureDefinition-BasedOnCarePlanExtension.html");
  else if (id == "klgateway-140-focus-condition")
    Response.Redirect("http://fhir.kl.dk/rehab/2.0.0/StructureDefinition-klgateway-140-focus-condition.html");
  else if (id == "klgateway-140-condition")
    Response.Redirect("http://fhir.kl.dk/rehab/2.0.0/StructureDefinition-klgateway-140-condition.html");
  else if (id == "klgateway-140-encounter")
    Response.Redirect("http://fhir.kl.dk/rehab/2.0.0/StructureDefinition-klgateway-140-encounter.html");
  else if (id == "klgateway-140-citizen")
    Response.Redirect("http://fhir.kl.dk/rehab/2.0.0/StructureDefinition-klgateway-140-citizen.html");
  else if (id == "klgateway-140-delivery-report")
    Response.Redirect("http://fhir.kl.dk/rehab/2.0.0/StructureDefinition-klgateway-140-delivery-report.html");
  else if (id == "klgateway-140-servicerequest")
    Response.Redirect("http://fhir.kl.dk/rehab/2.0.0/StructureDefinition-klgateway-140-servicerequest.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/rehab/StructureDefinition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \rehab\2.0.0\crstructuredefinition.asp) .
</body>
</html>
