<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Condition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Condition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Condition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Condition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Condition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Condition-"+id+".xml");
  else if (id == "ProblemerMedPersonligPleje")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/Condition-ProblemerMedPersonligPleje.html");
  else if (id == "VaskeSigLetteBegraensninger")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/Condition-VaskeSigLetteBegraensninger.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/gateway/Condition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from 1.0-milestone/output/crcondition.asp) .
</body>
</html>
