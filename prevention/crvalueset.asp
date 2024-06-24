<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/ValueSet-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/ValueSet-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/ValueSet-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/ValueSet-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/ValueSet-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/ValueSet-"+id+".xml");
  else if (id == "ServiceTypes119")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/ValueSet-ServiceTypes119.html");
  else if (id == "CancellationTypes")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/ValueSet-CancellationTypes.html");
  else if (id == "EncounterClassCodes")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/ValueSet-EncounterClassCodes.html");
  else if (id == "CarePlanCategories119")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/ValueSet-CarePlanCategories119.html");
  else if (id == "DeliveryTypes119")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/ValueSet-DeliveryTypes119.html");
  else if (id == "KLInterventionCodes119")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/ValueSet-KLInterventionCodes119.html");
  else if (id == "KLConditionCodes119")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.0/ValueSet-KLConditionCodes119.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/prevention/ValueSet.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from #2.1.0-milestone\output\crvalueset.asp) .
</body>
</html>
