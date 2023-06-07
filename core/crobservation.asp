<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Observation-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Observation-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Observation-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Observation-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Observation-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/core/Observation-"+id+".xml");
  else if (id == "MobilityInformationJudith")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Observation-MobilityInformationJudith.html");
  else if (id == "MarksDiastoliske")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Observation-MarksDiastoliske.html");
  else if (id == "AndreasStottebehov")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Observation-AndreasStottebehov.html");
  else if (id == "SkinInformationMark")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Observation-SkinInformationMark.html");
  else if (id == "MentalInformationMads")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Observation-MentalInformationMads.html");
  else if (id == "AndreasRevisitation")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Observation-AndreasRevisitation.html");
  else if (id == "RespirationCirculationInformationMark")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Observation-RespirationCirculationInformationMark.html");
  else if (id == "MarkHjemmeplejeRevisitation")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Observation-MarkHjemmeplejeRevisitation.html");
  else if (id == "MarksBlodsukker")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Observation-MarksBlodsukker.html");
  else if (id == "MarksPuls")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Observation-MarksPuls.html");
  else if (id == "MarkHelhedsvurdering")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Observation-MarkHelhedsvurdering.html");
  else if (id == "Observation22")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Observation-Observation22.html");
  else if (id == "MentalInformationMadsOthers")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Observation-MentalInformationMadsOthers.html");
  else if (id == "JudithGaa")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Observation-JudithGaa.html");
  else if (id == "Observation1234")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Observation-Observation1234.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/core/Observation.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from -milestone/output/crobservation.asp) .
</body>
</html>
