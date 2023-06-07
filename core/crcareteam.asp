<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/CareTeam-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/CareTeam-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/CareTeam-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/CareTeam-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/CareTeam-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/core/CareTeam-"+id+".xml");
  else if (id == "AlmBotilbud")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/CareTeam-AlmBotilbud.html");
  else if (id == "MidlertidigtOpholdBotilbuddetHvidbjerghus")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/CareTeam-MidlertidigtOpholdBotilbuddetHvidbjerghus.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/core/CareTeam.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from -milestone/output/crcareteam.asp) .
</body>
</html>
