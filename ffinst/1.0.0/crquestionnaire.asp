<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/Questionnaire-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/Questionnaire-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/Questionnaire-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/Questionnaire-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/Questionnaire-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/Questionnaire-"+id+".xml");
  else if (id == "KLToolsCareWHO5")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/Questionnaire-KLToolsCareWHO5.html");
  else if (id == "KLToolsCareEQ5D")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/Questionnaire-KLToolsCareEQ5D.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/ffinst/Questionnaire.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /ffinst/1.0.0/crquestionnaire.asp) .
</body>
</html>
