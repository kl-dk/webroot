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
  else if (id == "RikkeDeliveryReport2months")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/Bundle-RikkeDeliveryReport2months.html");
  else if (id == "RikkeDeliveryReport2nd1mth")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/Bundle-RikkeDeliveryReport2nd1mth.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/children/Bundle.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /children/1.0.0/crbundle.asp) .
</body>
</html>
