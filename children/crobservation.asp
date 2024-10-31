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
  else if (id == "RikkeMotorFunction2mth")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-RikkeMotorFunction2mth.html");
  else if (id == "RikkeEyeContact2mth")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-RikkeEyeContact2mth.html");
  else if (id == "RikkeBodyWeight3mth")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-RikkeBodyWeight3mth.html");
  else if (id == "KirstenParentMentalStatus")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-KirstenParentMentalStatus.html");
  else if (id == "RikkeFeedingObservationPeriod")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-RikkeFeedingObservationPeriod.html");
  else if (id == "RikkeSleep2mth")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-RikkeSleep2mth.html");
  else if (id == "RikkeBodyWeight")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-RikkeBodyWeight.html");
  else if (id == "LarsIncontinenceObservation")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-LarsIncontinenceObservation.html");
  else if (id == "LarsMentalStateObservation")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-LarsMentalStateObservation.html");
  else if (id == "RikkeFeedingObservationStatus")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-RikkeFeedingObservationStatus.html");
  else if (id == "RikkeFeedingObservationNewPeriod")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-RikkeFeedingObservationNewPeriod.html");
  else if (id == "RikkeSocialInteraction")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-RikkeSocialInteraction.html");
  else if (id == "RikkeFeedingObservationStatus10mth")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-RikkeFeedingObservationStatus10mth.html");
  else if (id == "RikkeBodyHeight")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-RikkeBodyHeight.html");
  else if (id == "RikkeChildrenParentRelationship")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-RikkeChildrenParentRelationship.html");
  else if (id == "RikkeBodyHeight2mth")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-RikkeBodyHeight2mth.html");
  else if (id == "RikkeCommunication2mth")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-RikkeCommunication2mth.html");
  else if (id == "RikkeHeadCircum")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-RikkeHeadCircum.html");
  else if (id == "RikkeBodyWeight2mth")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/Observation-RikkeBodyWeight2mth.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/children/Observation.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from .1.0-milestone\output\crobservation.asp) .
</body>
</html>
