<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Practitioner-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Practitioner-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Practitioner-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Practitioner-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/Practitioner-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/core/Practitioner-"+id+".xml");
  else if (id == "AnneFraHvidbjerghus")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Practitioner-AnneFraHvidbjerghus.html");
  else if (id == "AbrahamFraAkutSygeplejen")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Practitioner-AbrahamFraAkutSygeplejen.html");
  else if (id == "MarianneLaege")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Practitioner-MarianneLaege.html");
  else if (id == "NatasjaFraSygeplejen")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Practitioner-NatasjaFraSygeplejen.html");
  else if (id == "BirteFraVisitationenMorsoe")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Practitioner-BirteFraVisitationenMorsoe.html");
  else if (id == "HanneFraVisitationenAalborg")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Practitioner-HanneFraVisitationenAalborg.html");
  else if (id == "KristinaFraVoksensocialomraadet")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/Practitioner-KristinaFraVoksensocialomraadet.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/core/Practitioner.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from -milestone/output/crpractitioner.asp) .
</body>
</html>
