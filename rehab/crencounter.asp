<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Encounter-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Encounter-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Encounter-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Encounter-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Encounter-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Encounter-"+id+".xml");
  else if (id == "RuddiKontakt1Traening")
    Response.Redirect("http://fhir.kl.dk/rehab/2.0.0/Encounter-RuddiKontakt1Traening.html");
  else if (id == "RuddiKontaktUndersoegelse")
    Response.Redirect("http://fhir.kl.dk/rehab/2.0.0/Encounter-RuddiKontaktUndersoegelse.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/rehab/Encounter.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from 0-milestone\output\crencounter.asp) .
</body>
</html>
