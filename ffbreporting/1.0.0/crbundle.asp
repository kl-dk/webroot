<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbreporting/Bundle-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbreporting/Bundle-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbreporting/Bundle-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbreporting/Bundle-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbreporting/Bundle-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/ffbreporting/Bundle-"+id+".xml");
  else if (id == "ae9cdbef-ca35-4dae-b5df-ffd938cf0098")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/Bundle-ae9cdbef-ca35-4dae-b5df-ffd938cf0098.html");
  else if (id == "5bf6a186-ee66-4b0e-ba6e-623972ab5130")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/Bundle-5bf6a186-ee66-4b0e-ba6e-623972ab5130.html");
  else if (id == "498644ca-b26c-4ba7-a1ef-69d691297ba3")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/Bundle-498644ca-b26c-4ba7-a1ef-69d691297ba3.html");
  else if (id == "4b4e5f33-a9a2-42f6-b598-180543029ae5")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/Bundle-4b4e5f33-a9a2-42f6-b598-180543029ae5.html");
  else if (id == "aaa5d153-968e-46ec-9f9e-cfc6e93a3f1b")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/1.0.0/Bundle-aaa5d153-968e-46ec-9f9e-cfc6e93a3f1b.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/ffbreporting/Bundle.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /ffbreporting/1.0.0/crbundle.asp) .
</body>
</html>
