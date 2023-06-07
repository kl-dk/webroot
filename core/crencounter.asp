<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Encounter-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Encounter-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Encounter-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Encounter-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Encounter-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/core/Encounter-"+id+".xml");
  else if (id == "MarkogUdredningSygepleje")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Encounter-MarkogUdredningSygepleje.html");
  else if (id == "MarkOgAkutsygeplejerske")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Encounter-MarkOgAkutsygeplejerske.html");
  else if (id == "Encounter333v2")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Encounter-Encounter333v2.html");
  else if (id == "Encounter333")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Encounter-Encounter333.html");
  else if (id == "MarkogSaarsygeplejerske")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Encounter-MarkogSaarsygeplejerske.html");
  else if (id == "MarkFollowUpPlanned")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Encounter-MarkFollowUpPlanned.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/core/Encounter.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from -milestone/output/crencounter.asp) .
</body>
</html>
