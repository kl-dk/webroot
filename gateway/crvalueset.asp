<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/ValueSet-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/ValueSet-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/ValueSet-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/ValueSet-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/ValueSet-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/ValueSet-"+id+".xml");
  else if (id == "FSIIICareConditions")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/ValueSet-FSIIICareConditions.html");
  else if (id == "FSIIICareMatterOfInterests")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/ValueSet-FSIIICareMatterOfInterests.html");
  else if (id == "FSIIICareInterventions")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/ValueSet-FSIIICareInterventions.html");
  else if (id == "FSIIICareGoalTypes")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/ValueSet-FSIIICareGoalTypes.html");
  else if (id == "KLGatewayCareMatterOfInterestValues")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/ValueSet-KLGatewayCareMatterOfInterestValues.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/gateway/ValueSet.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from 1.0-milestone/output/crvalueset.asp) .
</body>
</html>
