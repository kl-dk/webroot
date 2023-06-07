<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/ServiceRequest-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/ServiceRequest-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/ServiceRequest-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/ServiceRequest-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/ServiceRequest-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/core/ServiceRequest-"+id+".xml");
  else if (id == "HenvisningFraLageVedrAkutSygepleje")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/ServiceRequest-HenvisningFraLageVedrAkutSygepleje.html");
  else if (id == "InternHenvendelseEfterOpfolgning")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/ServiceRequest-InternHenvendelseEfterOpfolgning.html");
  else if (id == "HenvendelseVedrSygeplejeMark")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/ServiceRequest-HenvendelseVedrSygeplejeMark.html");
  else if (id == "HenvendelseFraMorVedrSocialIndsats")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/ServiceRequest-HenvendelseFraMorVedrSocialIndsats.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/core/ServiceRequest.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /core/1.2.0/crservicerequest.asp) .
</body>
</html>
