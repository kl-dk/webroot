<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/ValueSet-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/ValueSet-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/ValueSet-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/ValueSet-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/ValueSet-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/ValueSet-"+id+".xml");
  else if (id == "kl-messaging-ffb-consentPolicyValues")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/ValueSet-kl-messaging-ffb-consentPolicyValues.html");
  else if (id == "kl-messaging-ffb-guardianshipFormValues")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/ValueSet-kl-messaging-ffb-guardianshipFormValues.html");
  else if (id == "kl-messaging-ffb-participantRoleValues")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/ValueSet-kl-messaging-ffb-participantRoleValues.html");
  else if (id == "kl-messaging-ffb-relationshipTypeValues")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/ValueSet-kl-messaging-ffb-relationshipTypeValues.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/ValueSet.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /ffbmessaging/1.0.0/crvalueset.asp) .
</body>
</html>
