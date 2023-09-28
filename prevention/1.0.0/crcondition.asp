<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/Condition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/Condition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/Condition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/Condition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/Condition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/Condition-"+id+".xml");
  else if (id == "BrunoTilstand")
    Response.Redirect("http://fhir.kl.dk/prevention/1.0.0/Condition-BrunoTilstand.html");
  else if (id == "BrunoAktionsdiagnoseRequest")
    Response.Redirect("http://fhir.kl.dk/prevention/1.0.0/Condition-BrunoAktionsdiagnoseRequest.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/prevention/Condition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /prevention/1.0.0/crcondition.asp) .
</body>
</html>
