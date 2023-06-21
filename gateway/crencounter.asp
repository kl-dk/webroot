<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Encounter-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Encounter-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Encounter-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Encounter-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Encounter-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Encounter-"+id+".xml");
  else if (id == "bfa70a76-318d-453d-9abc-76982f8d13ca")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/Encounter-bfa70a76-318d-453d-9abc-76982f8d13ca.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/gateway/Encounter.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from 1.0-milestone/output/crencounter.asp) .
</body>
</html>
