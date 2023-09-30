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
  else if (id == "klgateway-children-related-parent")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/StructureDefinition-klgateway-children-related-parent.html");
  else if (id == "klgateway-children-delivery-report")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/StructureDefinition-klgateway-children-delivery-report.html");
  else if (id == "klgateway-children-tobacco-observation")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/StructureDefinition-klgateway-children-tobacco-observation.html");
  else if (id == "klgateway-children-feeding-observation")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/StructureDefinition-klgateway-children-feeding-observation.html");
  else if (id == "klgateway-children-headcircum")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/StructureDefinition-klgateway-children-headcircum.html");
  else if (id == "klgateway-children-citizen")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/StructureDefinition-klgateway-children-citizen.html");
  else if (id == "klgateway-children-indicator")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/StructureDefinition-klgateway-children-indicator.html");
  else if (id == "klgateway-children-bodyweight")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/StructureDefinition-klgateway-children-bodyweight.html");
  else if (id == "klgateway-children-mental-state")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/StructureDefinition-klgateway-children-mental-state.html");
  else if (id == "klgateway-children-bodyheight")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/StructureDefinition-klgateway-children-bodyheight.html");
  else if (id == "klgateway-children-encounter")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/StructureDefinition-klgateway-children-encounter.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/children/StructureDefinition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /children/1.0.0/crstructuredefinition.asp) .
</body>
</html>
