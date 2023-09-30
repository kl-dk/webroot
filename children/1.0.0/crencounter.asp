<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Encounter-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Encounter-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Encounter-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Encounter-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Encounter-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/children/Encounter-"+id+".xml");
  else if (id == "2nd1mthEncounter")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/Encounter-2nd1mthEncounter.html");
  else if (id == "10mthEncounter")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/Encounter-10mthEncounter.html");
  else if (id == "SchoolStartEncounter")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/Encounter-SchoolStartEncounter.html");
  else if (id == "2mthEncounter")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/Encounter-2mthEncounter.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/children/Encounter.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /children/1.0.0/crencounter.asp) .
</body>
</html>
