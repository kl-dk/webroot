<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/ValueSet-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/ValueSet-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/ValueSet-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/ValueSet-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/ValueSet-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/ValueSet-"+id+".xml");
  else if (id == "Conditions140")
    Response.Redirect("http://fhir.kl.dk/rehab/2.1.1/ValueSet-Conditions140.html");
  else if (id == "CarePlanCategories140")
    Response.Redirect("http://fhir.kl.dk/rehab/2.1.1/ValueSet-CarePlanCategories140.html");
  else if (id == "CancellationTypes")
    Response.Redirect("http://fhir.kl.dk/rehab/2.1.1/ValueSet-CancellationTypes.html");
  else if (id == "EncounterClassCodes")
    Response.Redirect("http://fhir.kl.dk/rehab/2.1.1/ValueSet-EncounterClassCodes.html");
  else if (id == "DeliveryTypes140")
    Response.Redirect("http://fhir.kl.dk/rehab/2.1.1/ValueSet-DeliveryTypes140.html");
  else if (id == "ServiceRequestStatusReasons140")
    Response.Redirect("http://fhir.kl.dk/rehab/2.1.1/ValueSet-ServiceRequestStatusReasons140.html");
  else if (id == "ServiceRequestTypes140")
    Response.Redirect("http://fhir.kl.dk/rehab/2.1.1/ValueSet-ServiceRequestTypes140.html");
  else if (id == "ServiceTypes140")
    Response.Redirect("http://fhir.kl.dk/rehab/2.1.1/ValueSet-ServiceTypes140.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/rehab/ValueSet.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \rehab\2.1.1\crvalueset.asp) .
</body>
</html>
