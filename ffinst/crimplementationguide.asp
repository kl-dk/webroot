<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/ImplementationGuide-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/ImplementationGuide-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/ImplementationGuide-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/ImplementationGuide-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/ImplementationGuide-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/ImplementationGuide-"+id+".xml");
  else if (id == "kl.dk.fhir.ffinst")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ImplementationGuide-kl.dk.fhir.ffinst.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/ffinst/ImplementationGuide.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from .0-milestone/output/crimplementationguide.asp) .
</body>
</html>
