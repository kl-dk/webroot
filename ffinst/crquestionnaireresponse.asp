<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/QuestionnaireResponse-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/QuestionnaireResponse-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/QuestionnaireResponse-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/QuestionnaireResponse-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/QuestionnaireResponse-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/QuestionnaireResponse-"+id+".xml");
  else if (id == "WHO-5AnswerMark")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/QuestionnaireResponse-WHO-5AnswerMark.html");
  else if (id == "EQ5DAnswerHelene")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/QuestionnaireResponse-EQ5DAnswerHelene.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/ffinst/QuestionnaireResponse.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from .0-milestone/output/crquestionnaireresponse.asp) .
</body>
</html>
