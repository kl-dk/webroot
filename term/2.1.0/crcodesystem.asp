<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/term/CodeSystem-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/term/CodeSystem-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/term/CodeSystem-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/term/CodeSystem-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/term/CodeSystem-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/term/CodeSystem-"+id+".xml");
  else if (id == "FFB")
    Response.Redirect("http://fhir.kl.dk/term/2.1.0/CodeSystem-FFB.html");
  else if (id == "CareSocialCodes")
    Response.Redirect("http://fhir.kl.dk/term/2.1.0/CodeSystem-CareSocialCodes.html");
  else if (id == "FBOE")
    Response.Redirect("http://fhir.kl.dk/term/2.1.0/CodeSystem-FBOE.html");
  else if (id == "KLCommonproprietary")
    Response.Redirect("http://fhir.kl.dk/term/2.1.0/CodeSystem-KLCommonproprietary.html");
  else if (id == "FSIII")
    Response.Redirect("http://fhir.kl.dk/term/2.1.0/CodeSystem-FSIII.html");
  else if (id == "NPU")
    Response.Redirect("http://fhir.kl.dk/term/2.1.0/CodeSystem-NPU.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/term/CodeSystem.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \term\2.1.0\crcodesystem.asp) .
</body>
</html>
