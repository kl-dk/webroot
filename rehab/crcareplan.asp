<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/CarePlan-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/CarePlan-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/CarePlan-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/CarePlan-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/CarePlan-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/CarePlan-"+id+".xml");
  else if (id == "RuddiTerapeutfagligUndersoegelse")
    Response.Redirect("http://fhir.kl.dk/rehab/1.0.0/CarePlan-RuddiTerapeutfagligUndersoegelse.html");
  else if (id == "RuddiFunctionalTraening")
    Response.Redirect("http://fhir.kl.dk/rehab/1.0.0/CarePlan-RuddiFunctionalTraening.html");
  else if (id == "RuddiTraeningsforloeb")
    Response.Redirect("http://fhir.kl.dk/rehab/1.0.0/CarePlan-RuddiTraeningsforloeb.html");
  else if (id == "RuddiTraening")
    Response.Redirect("http://fhir.kl.dk/rehab/1.0.0/CarePlan-RuddiTraening.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/rehab/CarePlan.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from 0-milestone/output/crcareplan.asp) .
</body>
</html>
