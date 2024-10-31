<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Bundle-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Bundle-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Bundle-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Bundle-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Bundle-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/rehab/Bundle-"+id+".xml");
  else if (id == "c2f75bbf-2027-41bf-b597-de5e242f2b3d")
    Response.Redirect("http://fhir.kl.dk/rehab/2.2.0/Bundle-c2f75bbf-2027-41bf-b597-de5e242f2b3d.html");
  else if (id == "9960b8dc-5ebf-4166-83d7-b042bcc6aca5")
    Response.Redirect("http://fhir.kl.dk/rehab/2.2.0/Bundle-9960b8dc-5ebf-4166-83d7-b042bcc6aca5.html");
  else if (id == "4b9443a2-7231-4387-8e3d-614bf193df49")
    Response.Redirect("http://fhir.kl.dk/rehab/2.2.0/Bundle-4b9443a2-7231-4387-8e3d-614bf193df49.html");
  else if (id == "4a391f69-a909-4a79-92bd-1b0f812dc52a")
    Response.Redirect("http://fhir.kl.dk/rehab/2.2.0/Bundle-4a391f69-a909-4a79-92bd-1b0f812dc52a.html");
  else if (id == "e87d5e68-e5f3-476f-988f-4efda86b0645")
    Response.Redirect("http://fhir.kl.dk/rehab/2.2.0/Bundle-e87d5e68-e5f3-476f-988f-4efda86b0645.html");
  else if (id == "RuddiIndberetningsrapport")
    Response.Redirect("http://fhir.kl.dk/rehab/2.2.0/Bundle-RuddiIndberetningsrapport.html");
  else if (id == "TestIncrementalDelivery")
    Response.Redirect("http://fhir.kl.dk/rehab/2.2.0/Bundle-TestIncrementalDelivery.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/rehab/Bundle.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \rehab\2.2.0\crbundle.asp) .
</body>
</html>
