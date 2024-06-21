<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/ServiceRequest-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/ServiceRequest-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/ServiceRequest-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/ServiceRequest-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/ServiceRequest-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/ServiceRequest-"+id+".xml");
  else if (id == "BrunoRequestInformation")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.1/ServiceRequest-BrunoRequestInformation.html");
  else if (id == "BrunoTidligereRequestInformation")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.1/ServiceRequest-BrunoTidligereRequestInformation.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/prevention/ServiceRequest.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \prevention\2.1.1\crservicerequest.asp) .
</body>
</html>
