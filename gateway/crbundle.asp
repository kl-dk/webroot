<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Bundle-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Bundle-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Bundle-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Bundle-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Bundle-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/gateway/Bundle-"+id+".xml");
  else if (id == "abc81b1f-b3ba-41f0-9f4b-2fc4df5aaabb")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/Bundle-abc81b1f-b3ba-41f0-9f4b-2fc4df5aaabb.html");
  else if (id == "3304e5f8-4b3f-4c19-8c68-e36c573f3f98")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/Bundle-3304e5f8-4b3f-4c19-8c68-e36c573f3f98.html");
  else if (id == "TestPersonReport")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/Bundle-TestPersonReport.html");
  else if (id == "374484d0-00cb-4b63-94d1-a0d984afc339")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/Bundle-374484d0-00cb-4b63-94d1-a0d984afc339.html");
  else if (id == "0c1112c3-77b5-4d85-965c-0c26228ec7ef")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/Bundle-0c1112c3-77b5-4d85-965c-0c26228ec7ef.html");
  else if (id == "643c3e42-ab90-4354-9b98-f01b4740d3d9")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/Bundle-643c3e42-ab90-4354-9b98-f01b4740d3d9.html");
  else if (id == "b1c5348b-fe9f-4afc-96ff-8c42b6c6c7ff")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/Bundle-b1c5348b-fe9f-4afc-96ff-8c42b6c6c7ff.html");
  else if (id == "d54206de-c95b-4c53-9517-6eb155dca99a")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/Bundle-d54206de-c95b-4c53-9517-6eb155dca99a.html");
  else if (id == "1652f2a9-510a-4cd3-8fc4-8b69d0ffedae")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/Bundle-1652f2a9-510a-4cd3-8fc4-8b69d0ffedae.html");
  else if (id == "cc93afc5-7849-4895-84eb-00bb5c129c0b")
    Response.Redirect("http://fhir.kl.dk/gateway/1.1.0/Bundle-cc93afc5-7849-4895-84eb-00bb5c129c0b.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/gateway/Bundle.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from 1.0-milestone/output/crbundle.asp) .
</body>
</html>
