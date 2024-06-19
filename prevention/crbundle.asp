<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/Bundle-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/Bundle-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/Bundle-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/Bundle-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/Bundle-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/Bundle-"+id+".xml");
  else if (id == "738ec570-6bb6-4690-9a88-1dbed46d65ed")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/Bundle-738ec570-6bb6-4690-9a88-1dbed46d65ed.html");
  else if (id == "5135080e-fbaf-4575-afe6-f037d4541e06")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/Bundle-5135080e-fbaf-4575-afe6-f037d4541e06.html");
  else if (id == "8c3f35d7-7437-4fcf-90d2-49e04701d0ec")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/Bundle-8c3f35d7-7437-4fcf-90d2-49e04701d0ec.html");
  else if (id == "BrunoIndberetningsrapport")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/Bundle-BrunoIndberetningsrapport.html");
  else if (id == "e87d5e68-e5f3-476f-988f-4efda86b0645")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/Bundle-e87d5e68-e5f3-476f-988f-4efda86b0645.html");
  else if (id == "974cabc7-d2e0-4db0-bfa4-6cd5af7103de")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/Bundle-974cabc7-d2e0-4db0-bfa4-6cd5af7103de.html");
  else if (id == "88889c22-b86d-4ceb-81d8-38a158f12bf4")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/Bundle-88889c22-b86d-4ceb-81d8-38a158f12bf4.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/prevention/Bundle.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from #2.1.0-milestone\output\crbundle.asp) .
</body>
</html>
