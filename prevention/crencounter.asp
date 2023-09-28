﻿<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/Encounter-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/Encounter-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/Encounter-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/Encounter-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/Encounter-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/Encounter-"+id+".xml");
  else if (id == "BrunoKontakt1Kost")
    Response.Redirect("http://fhir.kl.dk/prevention/1.0.0/Encounter-BrunoKontakt1Kost.html");
  else if (id == "BrunoKontaktAfklarende")
    Response.Redirect("http://fhir.kl.dk/prevention/1.0.0/Encounter-BrunoKontaktAfklarende.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/prevention/Encounter.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from #1.0.0-milestone/output/crencounter.asp) .
</body>
</html>
