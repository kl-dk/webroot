<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/CodeSystem-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/CodeSystem-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/CodeSystem-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/CodeSystem-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/CodeSystem-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/CodeSystem-"+id+".xml");
  else if (id == "LocallyDefinedInterventions")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/CodeSystem-LocallyDefinedInterventions.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/gateway/CodeSystem.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from 1.0-milestone/output/crcodesystem.asp) .
</body>
</html>
