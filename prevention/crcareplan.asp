<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/CarePlan-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/CarePlan-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/CarePlan-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/CarePlan-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/CarePlan-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/prevention/CarePlan-"+id+".xml");
  else if (id == "BrunoKostvejledning")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.1/CarePlan-BrunoKostvejledning.html");
  else if (id == "BrunoforloebKost")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.1/CarePlan-BrunoforloebKost.html");
  else if (id == "BrunoforloebKostAfbrudt")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.1/CarePlan-BrunoforloebKostAfbrudt.html");
  else if (id == "BrunoforloebKostAfbrudtValidationerror")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.1/CarePlan-BrunoforloebKostAfbrudtValidationerror.html");
  else if (id == "BrunoKostvejledningValidationError")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.1/CarePlan-BrunoKostvejledningValidationError.html");
  else if (id == "BrunoforloebKostValidationerror")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.1/CarePlan-BrunoforloebKostValidationerror.html");
  else if (id == "BrunoAfklarendeSamtale")
    Response.Redirect("http://fhir.kl.dk/prevention/2.1.1/CarePlan-BrunoAfklarendeSamtale.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/prevention/CarePlan.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from #2.1.1-milestone\output\crcareplan.asp) .
</body>
</html>
