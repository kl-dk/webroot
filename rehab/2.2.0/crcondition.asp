<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Condition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Condition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Condition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Condition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Condition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Condition-"+id+".xml");
  else if (id == "RuddiAktionsdiagnoseGGOP")
    Response.Redirect("http://fhir.kl.dk/rehab/2.2.0/Condition-RuddiAktionsdiagnoseGGOP.html");
  else if (id == "RuddiTilstand")
    Response.Redirect("http://fhir.kl.dk/rehab/2.2.0/Condition-RuddiTilstand.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/rehab/Condition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \rehab\2.2.0\crcondition.asp) .
</body>
</html>
