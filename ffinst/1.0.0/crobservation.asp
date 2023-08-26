<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/Observation-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/Observation-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/Observation-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/Observation-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/Observation-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/Observation-"+id+".xml");
  else if (id == "HelenePainVAS")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/Observation-HelenePainVAS.html");
  else if (id == "HelenePainVRS")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/Observation-HelenePainVRS.html");
  else if (id == "HeleneHeartRate")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/Observation-HeleneHeartRate.html");
  else if (id == "HeleneBodyWeight")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/Observation-HeleneBodyWeight.html");
  else if (id == "HeleneBodyHeight")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/Observation-HeleneBodyHeight.html");
  else if (id == "Helene6minwalk")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/Observation-Helene6minwalk.html");
  else if (id == "MarksWHO5-2")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/Observation-MarksWHO5-2.html");
  else if (id == "HeleneBloodPressure")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/Observation-HeleneBloodPressure.html");
  else if (id == "HeleneOxygenSaturation")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/Observation-HeleneOxygenSaturation.html");
  else if (id == "HeleneRSS")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/Observation-HeleneRSS.html");
  else if (id == "HeleneUrinStix")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/Observation-HeleneUrinStix.html");
  else if (id == "HeleneRespirationRate")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/Observation-HeleneRespirationRate.html");
  else if (id == "HeleneBodyTemperature")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/Observation-HeleneBodyTemperature.html");
  else if (id == "HeleneConsciousness")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/Observation-HeleneConsciousness.html");
  else if (id == "HeleneEQ5Dmobility")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/Observation-HeleneEQ5Dmobility.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/ffinst/Observation.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /ffinst/1.0.0/crobservation.asp) .
</body>
</html>
