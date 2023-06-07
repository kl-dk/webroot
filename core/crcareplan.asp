<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/CarePlan-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/CarePlan-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/CarePlan-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/CarePlan-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/CarePlan-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/core/CarePlan-"+id+".xml");
  else if (id == "AndreasSocialeRelationer")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/CarePlan-AndreasSocialeRelationer.html");
  else if (id == "PressureUlcerIntervention")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/CarePlan-PressureUlcerIntervention.html");
  else if (id == "NySocialIndsats")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/CarePlan-NySocialIndsats.html");
  else if (id == "AndreasDagligeOpgaver")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/CarePlan-AndreasDagligeOpgaver.html");
  else if (id == "FFBIndsats")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/CarePlan-FFBIndsats.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/core/CarePlan.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from -milestone/output/crcareplan.asp) .
</body>
</html>
