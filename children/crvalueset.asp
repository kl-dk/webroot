<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/ValueSet-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/ValueSet-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/ValueSet-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/ValueSet-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/children/ValueSet-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/children/ValueSet-"+id+".xml");
  else if (id == "BodyheightSCTobservablesChildren")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/ValueSet-BodyheightSCTobservablesChildren.html");
  else if (id == "ObservationSCTChildren")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/ValueSet-ObservationSCTChildren.html");
  else if (id == "ParentTypes")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/ValueSet-ParentTypes.html");
  else if (id == "IndicatorResultsChildren")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/ValueSet-IndicatorResultsChildren.html");
  else if (id == "HeadCircumSCTobservablesChildren")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/ValueSet-HeadCircumSCTobservablesChildren.html");
  else if (id == "ObservationUnitsChildren")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/ValueSet-ObservationUnitsChildren.html");
  else if (id == "FeedingResultsChildren")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/ValueSet-FeedingResultsChildren.html");
  else if (id == "IndicatorCodesChildren")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/ValueSet-IndicatorCodesChildren.html");
  else if (id == "MentalStateObservablesChildren")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/ValueSet-MentalStateObservablesChildren.html");
  else if (id == "MentalStateResultsChildren")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/ValueSet-MentalStateResultsChildren.html");
  else if (id == "EncounterTypes")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/ValueSet-EncounterTypes.html");
  else if (id == "TobaccoResultsChildren")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/ValueSet-TobaccoResultsChildren.html");
  else if (id == "TobaccoObservablesChildren")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/ValueSet-TobaccoObservablesChildren.html");
  else if (id == "ObservationResultsChildren")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/ValueSet-ObservationResultsChildren.html");
  else if (id == "FeedingObservablesChildren")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/ValueSet-FeedingObservablesChildren.html");
  else if (id == "BodyweightSCTobservablesChildren")
    Response.Redirect("http://fhir.kl.dk/children/1.0.0/ValueSet-BodyweightSCTobservablesChildren.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/children/ValueSet.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from .0.0-milestone/output/crvalueset.asp) .
</body>
</html>
