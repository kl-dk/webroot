<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/StructureDefinition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/StructureDefinition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/StructureDefinition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/StructureDefinition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/StructureDefinition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/StructureDefinition-"+id+".xml");
  else if (id == "DeliveryType")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/StructureDefinition-DeliveryType.html");
  else if (id == "klgateway-119-focus-condition")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/StructureDefinition-klgateway-119-focus-condition.html");
  else if (id == "klgateway-119-encounter")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/StructureDefinition-klgateway-119-encounter.html");
  else if (id == "klgateway-119-planned-intervention")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/StructureDefinition-klgateway-119-planned-intervention.html");
  else if (id == "BasedOnServiceRequestExtension")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/StructureDefinition-BasedOnServiceRequestExtension.html");
  else if (id == "klgateway-119-organization")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/StructureDefinition-klgateway-119-organization.html");
  else if (id == "BasedOnCarePlanExtension")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/StructureDefinition-BasedOnCarePlanExtension.html");
  else if (id == "klgateway-119-delivery-report")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/StructureDefinition-klgateway-119-delivery-report.html");
  else if (id == "klgateway-119-condition")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/StructureDefinition-klgateway-119-condition.html");
  else if (id == "klgateway-119-care-plan")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/StructureDefinition-klgateway-119-care-plan.html");
  else if (id == "klgateway-119-servicerequest")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/StructureDefinition-klgateway-119-servicerequest.html");
  else if (id == "klgateway-119-citizen")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/StructureDefinition-klgateway-119-citizen.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/prevention/StructureDefinition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \prevention\2.1.0\crstructuredefinition.asp) .
</body>
</html>
