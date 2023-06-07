<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Organization-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Organization-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Organization-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Organization-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Organization-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/core/Organization-"+id+".xml");
  else if (id == "SocialOgSundhedMorsoe")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Organization-SocialOgSundhedMorsoe.html");
  else if (id == "LaegerneHasserisBymidte")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Organization-LaegerneHasserisBymidte.html");
  else if (id == "BotilbudetSommergaarden")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Organization-BotilbudetSommergaarden.html");
  else if (id == "SundhedsforvaltningAalborg")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Organization-SundhedsforvaltningAalborg.html");
  else if (id == "BotilbudetHvidbjerghus")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Organization-BotilbudetHvidbjerghus.html");
  else if (id == "HjemmesygeplejeSonderborg")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Organization-HjemmesygeplejeSonderborg.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/core/Organization.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /core/1.2.0/crorganization.asp) .
</body>
</html>
