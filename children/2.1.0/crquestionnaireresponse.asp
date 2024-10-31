<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/QuestionnaireResponse-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/QuestionnaireResponse-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/QuestionnaireResponse-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/QuestionnaireResponse-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/QuestionnaireResponse-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/children/QuestionnaireResponse-"+id+".xml");
  else if (id == "PUFAnswerRikke")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/QuestionnaireResponse-PUFAnswerRikke.html");
  else if (id == "TOPIRikke")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/QuestionnaireResponse-TOPIRikke.html");
  else if (id == "EPDSAnswerKirsten")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/QuestionnaireResponse-EPDSAnswerKirsten.html");
  else if (id == "AIMSAnswerRikke")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/QuestionnaireResponse-AIMSAnswerRikke.html");
  else if (id == "ADBBAnswerRikke")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/QuestionnaireResponse-ADBBAnswerRikke.html");
  else if (id == "SDQ4-10AnswerLars")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/QuestionnaireResponse-SDQ4-10AnswerLars.html");
  else if (id == "SDQ11-17AnswerRikke")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/QuestionnaireResponse-SDQ11-17AnswerRikke.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/children/QuestionnaireResponse.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \children\2.1.0\crquestionnaireresponse.asp) .
</body>
</html>
