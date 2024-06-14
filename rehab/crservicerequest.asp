<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/ServiceRequest-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/ServiceRequest-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/ServiceRequest-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/ServiceRequest-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/ServiceRequest-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/ServiceRequest-"+id+".xml");
  else if (id == "RuddiGGOPInformation")
    Response.Redirect("http://fhir.kl.dk/rehab/2.0.0/ServiceRequest-RuddiGGOPInformation.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/rehab/ServiceRequest.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from 0-milestone\output\crservicerequest.asp) .
</body>
</html>
