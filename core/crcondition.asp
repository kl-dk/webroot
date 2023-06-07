<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Condition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Condition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Condition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Condition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Condition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/core/Condition-"+id+".xml");
  else if (id == "ConditionPressureUlcer")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Condition-ConditionPressureUlcer.html");
  else if (id == "ConditionCleaningWithNote")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Condition-ConditionCleaningWithNote.html");
  else if (id == "AndreasMaalgruppeUdviklingshamning")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Condition-AndreasMaalgruppeUdviklingshamning.html");
  else if (id == "Condition111")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Condition-Condition111.html");
  else if (id == "ConditionWalking")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Condition-ConditionWalking.html");
  else if (id == "ConditionCleaning")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Condition-ConditionCleaning.html");
  else if (id == "ConditionCareingForOwnHealthPerformerNoteFFB")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Condition-ConditionCareingForOwnHealthPerformerNoteFFB.html");
  else if (id == "JudithDiabetes")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Condition-JudithDiabetes.html");
  else if (id == "Condition111v3")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Condition-Condition111v3.html");
  else if (id == "Condition111v2")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Condition-Condition111v2.html");
  else if (id == "Condition444")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Condition-Condition444.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/core/Condition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from -milestone/output/crcondition.asp) .
</body>
</html>
