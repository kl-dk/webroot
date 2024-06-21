<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Questionnaire-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Questionnaire-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Questionnaire-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Questionnaire-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Questionnaire-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/children/Questionnaire-"+id+".xml");
  else if (id == "klgateway-children-aims")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Questionnaire-klgateway-children-aims.html");
  else if (id == "klgateway-children-adbb")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Questionnaire-klgateway-children-adbb.html");
  else if (id == "klgateway-children-topi")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Questionnaire-klgateway-children-topi.html");
  else if (id == "klgateway-children-puf")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Questionnaire-klgateway-children-puf.html");
  else if (id == "klgateway-children-sdq4-10")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Questionnaire-klgateway-children-sdq4-10.html");
  else if (id == "klgateway-children-epds")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Questionnaire-klgateway-children-epds.html");
  else if (id == "klgateway-children-sdq11-17")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Questionnaire-klgateway-children-sdq11-17.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/children/Questionnaire.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \children\2.0.1\crquestionnaire.asp) .
</body>
</html>
