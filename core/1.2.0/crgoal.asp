<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Goal-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Goal-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Goal-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Goal-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Goal-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/core/Goal-"+id+".xml");
  else if (id == "AndreasDelmaal")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Goal-AndreasDelmaal.html");
  else if (id == "MarkIndsatsmaal")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Goal-MarkIndsatsmaal.html");
  else if (id == "MarkForventetTilstand")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Goal-MarkForventetTilstand.html");
  else if (id == "JudithForventetTilstand")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Goal-JudithForventetTilstand.html");
  else if (id == "AndreasIndsatsformaal2")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Goal-AndreasIndsatsformaal2.html");
  else if (id == "Andreasindsatsmaal")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Goal-Andreasindsatsmaal.html");
  else if (id == "AndreasIndsatsformaal")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Goal-AndreasIndsatsformaal.html");
  else if (id == "AndreasindsatsmaalOpfolgning")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Goal-AndreasindsatsmaalOpfolgning.html");
  else if (id == "AndreasMaalOnsker")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Goal-AndreasMaalOnsker.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/core/Goal.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /core/1.2.0/crgoal.asp) .
</body>
</html>
