<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/CodeSystem-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/CodeSystem-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/CodeSystem-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/CodeSystem-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/CodeSystem-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/CodeSystem-"+id+".xml");
  else if (id == "kl-messaging-ffb-messageEventSystem")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/CodeSystem-kl-messaging-ffb-messageEventSystem.html");
  else if (id == "kl-messaging-ffb-participantRoleCodes")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/CodeSystem-kl-messaging-ffb-participantRoleCodes.html");
  else if (id == "kl-messaging-ffb-guardianshipFormCodes")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/CodeSystem-kl-messaging-ffb-guardianshipFormCodes.html");
  else if (id == "kl-messaging-ffb-relationshipTypeCodes")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/CodeSystem-kl-messaging-ffb-relationshipTypeCodes.html");
  else if (id == "kl-messaging-ffb-consentPolicyCodes")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/CodeSystem-kl-messaging-ffb-consentPolicyCodes.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/CodeSystem.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /ffbmessaging/1.0.0/crcodesystem.asp) .
</body>
</html>
