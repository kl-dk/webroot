<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Bundle-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Bundle-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Bundle-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Bundle-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/Bundle-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/children/Bundle-"+id+".xml");
  else if (id == "b9479825-6be1-4fa1-a2ae-74fe67014caa")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Bundle-b9479825-6be1-4fa1-a2ae-74fe67014caa.html");
  else if (id == "a50c7477-c817-4f98-92a8-b8c15f015d9e")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Bundle-a50c7477-c817-4f98-92a8-b8c15f015d9e.html");
  else if (id == "RikkeDeliveryReport2months")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Bundle-RikkeDeliveryReport2months.html");
  else if (id == "dbe422ac-dd15-4562-838d-1f5ff9ae45d8")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Bundle-dbe422ac-dd15-4562-838d-1f5ff9ae45d8.html");
  else if (id == "c60604d1-692b-4e6d-86e5-03046b2d2f16")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Bundle-c60604d1-692b-4e6d-86e5-03046b2d2f16.html");
  else if (id == "d2e57785-7d0e-4b30-9e51-62c14185b9ed")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Bundle-d2e57785-7d0e-4b30-9e51-62c14185b9ed.html");
  else if (id == "4cda6c3c-856c-4fe3-ac90-9b6f968207c3")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Bundle-4cda6c3c-856c-4fe3-ac90-9b6f968207c3.html");
  else if (id == "9a966368-052f-42e5-87fa-e57d9b8cbf2c")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Bundle-9a966368-052f-42e5-87fa-e57d9b8cbf2c.html");
  else if (id == "74dcb49e-dd6a-4450-9fb8-85ad0e7bed38")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Bundle-74dcb49e-dd6a-4450-9fb8-85ad0e7bed38.html");
  else if (id == "a27ab0ea-4018-4516-900c-f1249a28dc37")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Bundle-a27ab0ea-4018-4516-900c-f1249a28dc37.html");
  else if (id == "c5b55e0e-3bc4-468a-8600-1b23617dbb58")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Bundle-c5b55e0e-3bc4-468a-8600-1b23617dbb58.html");
  else if (id == "84cf4f74-0cc7-47fe-8301-3bc8eb0ddd8f")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Bundle-84cf4f74-0cc7-47fe-8301-3bc8eb0ddd8f.html");
  else if (id == "5f1d5816-a906-4314-a6f4-69b400682ec6")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Bundle-5f1d5816-a906-4314-a6f4-69b400682ec6.html");
  else if (id == "567a4d32-b3eb-46d6-8564-c7c2a1a1b903")
    Response.Redirect("http://fhir.kl.dk/children/2.0.1/Bundle-567a4d32-b3eb-46d6-8564-c7c2a1a1b903.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/children/Bundle.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \children\2.0.1\crbundle.asp) .
</body>
</html>
