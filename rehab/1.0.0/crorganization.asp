﻿<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Organization-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Organization-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Organization-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Organization-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Organization-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Organization-"+id+".xml");
  else if (id == "UdfoererAfRuddisRehab")
    Response.Redirect("http://fhir.kl.dk/rehab/1.0.0/Organization-UdfoererAfRuddisRehab.html");
  else if (id == "AfsenderAfRuddisGGOP")
    Response.Redirect("http://fhir.kl.dk/rehab/1.0.0/Organization-AfsenderAfRuddisGGOP.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/rehab/Organization.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /rehab/1.0.0/crorganization.asp) .
</body>
</html>
