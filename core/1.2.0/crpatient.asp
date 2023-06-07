<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Patient-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Patient-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Patient-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Patient-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Patient-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/core/Patient-"+id+".xml");
  else if (id == "Mark")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Patient-Mark.html");
  else if (id == "Andreas")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Patient-Andreas.html");
  else if (id == "BorgerEjnar")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Patient-BorgerEjnar.html");
  else if (id == "Mads")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Patient-Mads.html");
  else if (id == "Judith")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Patient-Judith.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/core/Patient.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /core/1.2.0/crpatient.asp) .
</body>
</html>
