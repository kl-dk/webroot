<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/CarePlan-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/CarePlan-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/CarePlan-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/CarePlan-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/CarePlan-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/CarePlan-"+id+".xml");
  else if (id == "Dialyse")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/CarePlan-Dialyse.html");
  else if (id == "PersonligHygiejne")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/CarePlan-PersonligHygiejne.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/gateway/CarePlan.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /gateway/1.1.0/crcareplan.asp) .
</body>
</html>
