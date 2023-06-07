<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Provenance-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Provenance-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Provenance-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Provenance-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Provenance-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/core/Provenance-"+id+".xml");
  else if (id == "ProvenanceCondition111")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Provenance-ProvenanceCondition111.html");
  else if (id == "InternHenvendelseEfterOpfolgningProvenance")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Provenance-InternHenvendelseEfterOpfolgningProvenance.html");
  else if (id == "ProvenanceCondition111v2")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Provenance-ProvenanceCondition111v2.html");
  else if (id == "ProvenanceCondition111v3")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Provenance-ProvenanceCondition111v3.html");
  else if (id == "HenvisningFraLageVedrAkutSygeplejeProvenance")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Provenance-HenvisningFraLageVedrAkutSygeplejeProvenance.html");
  else if (id == "HenvendelseFraMorVedrSocialIndsatsProvenance")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Provenance-HenvendelseFraMorVedrSocialIndsatsProvenance.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/core/Provenance.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /core/1.2.0/crprovenance.asp) .
</body>
</html>
