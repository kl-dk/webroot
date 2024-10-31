<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Observation-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Observation-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Observation-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Observation-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Observation-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Observation-"+id+".xml");
  else if (id == "PersonligPlejeFortsaettes")
    Response.Redirect("http://fhir.kl.dk/gateway/1.2.0/Observation-PersonligPlejeFortsaettes.html");
  else if (id == "VaskeSigFortsaettes")
    Response.Redirect("http://fhir.kl.dk/gateway/1.2.0/Observation-VaskeSigFortsaettes.html");
  else if (id == "PersonligHygiejneFortsaettes")
    Response.Redirect("http://fhir.kl.dk/gateway/1.2.0/Observation-PersonligHygiejneFortsaettes.html");
  else if (id == "UdfoererSelvVaskeSig")
    Response.Redirect("http://fhir.kl.dk/gateway/1.2.0/Observation-UdfoererSelvVaskeSig.html");
  else if (id == "DialyseFortsaettes")
    Response.Redirect("http://fhir.kl.dk/gateway/1.2.0/Observation-DialyseFortsaettes.html");
  else if (id == "EgensomsorgBegraensningerOmkringKropspleje")
    Response.Redirect("http://fhir.kl.dk/gateway/1.2.0/Observation-EgensomsorgBegraensningerOmkringKropspleje.html");
  else if (id == "EgensomsorgBegraensninger")
    Response.Redirect("http://fhir.kl.dk/gateway/1.2.0/Observation-EgensomsorgBegraensninger.html");
  else if (id == "OpleverIkkeBegraensningerMedVaskeSig")
    Response.Redirect("http://fhir.kl.dk/gateway/1.2.0/Observation-OpleverIkkeBegraensningerMedVaskeSig.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/gateway/Observation.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from 2.0-milestone\output\crobservation.asp) .
</body>
</html>
