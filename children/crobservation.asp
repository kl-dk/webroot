<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Observation-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Observation-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Observation-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Observation-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Observation-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/children/Observation-"+id+".xml");
  else if (id == "RikkeFeedingObservation")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/Observation-RikkeFeedingObservation.html");
  else if (id == "RikkeBodyHeight")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/Observation-RikkeBodyHeight.html");
  else if (id == "KirstenIndicatorMS")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/Observation-KirstenIndicatorMS.html");
  else if (id == "LarsmentalStateObservation")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/Observation-LarsmentalStateObservation.html");
  else if (id == "RikkeBodyWeight")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/Observation-RikkeBodyWeight.html");
  else if (id == "RikkeIndicatorSK")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/Observation-RikkeIndicatorSK.html");
  else if (id == "RikkeFeedingObservationError")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/Observation-RikkeFeedingObservationError.html");
  else if (id == "RikkeFeedingObservation2")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/Observation-RikkeFeedingObservation2.html");
  else if (id == "RikkeHeadCircum")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/Observation-RikkeHeadCircum.html");
  else if (id == "RikkeTobaccoObservation")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/Observation-RikkeTobaccoObservation.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/children/Observation.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from .0.0-milestone/output/crobservation.asp) .
</body>
</html>
