<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/Bundle-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/Bundle-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/Bundle-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/Bundle-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/Bundle-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/Bundle-"+id+".xml");
  else if (id == "909e720e-3edb-45b9-aeb2-655a97861f7c")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/Bundle-909e720e-3edb-45b9-aeb2-655a97861f7c.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/Bundle.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from ng#1.0.0-milestone/output/crbundle.asp) .
</body>
</html>
