<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Patient-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Patient-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Patient-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Patient-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Patient-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/children/Patient-"+id+".xml");
  else if (id == "Kirsten")
    Response.Redirect("http://fhir.kl.dk/children/2.0.0/Patient-Kirsten.html");
  else if (id == "Rikke")
    Response.Redirect("http://fhir.kl.dk/children/2.0.0/Patient-Rikke.html");
  else if (id == "Lars")
    Response.Redirect("http://fhir.kl.dk/children/2.0.0/Patient-Lars.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/children/Patient.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \children\2.0.0\crpatient.asp) .
</body>
</html>
