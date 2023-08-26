<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/ValueSet-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/ValueSet-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/ValueSet-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/ValueSet-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/ValueSet-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/ffinst/ValueSet-"+id+".xml");
  else if (id == "WHO5SCTfindingsActive3")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-WHO5SCTfindingsActive3.html");
  else if (id == "WHO5AnswerCodesInterest")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-WHO5AnswerCodesInterest.html");
  else if (id == "WHO5SCTfindingsInterest5")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-WHO5SCTfindingsInterest5.html");
  else if (id == "WHO5AnswerCodesCalm")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-WHO5AnswerCodesCalm.html");
  else if (id == "WHO5SCTfindingsCalm2")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-WHO5SCTfindingsCalm2.html");
  else if (id == "HeartRateSCTobservables")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-HeartRateSCTobservables.html");
  else if (id == "WHO5SCTfindingsHappy1")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-WHO5SCTfindingsHappy1.html");
  else if (id == "ConsciousnessSCTFindings")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-ConsciousnessSCTFindings.html");
  else if (id == "VRSpain")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-VRSpain.html");
  else if (id == "SCTUrinStix")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-SCTUrinStix.html");
  else if (id == "EQ5DSCTfindingsAnxiety")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-EQ5DSCTfindingsAnxiety.html");
  else if (id == "EQ5Dpain")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-EQ5Dpain.html");
  else if (id == "KLtechniquesCodes")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-KLtechniquesCodes.html");
  else if (id == "ConsciousnessCodes")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-ConsciousnessCodes.html");
  else if (id == "FindingInformerCodes")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-FindingInformerCodes.html");
  else if (id == "BodyheightSCTobservables")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-BodyheightSCTobservables.html");
  else if (id == "EQ5DSCTfindingsPain")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-EQ5DSCTfindingsPain.html");
  else if (id == "WHO5AnswerCodesActive")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-WHO5AnswerCodesActive.html");
  else if (id == "WHO5AnswerCodesRested")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-WHO5AnswerCodesRested.html");
  else if (id == "BodyweightSCTobservables")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-BodyweightSCTobservables.html");
  else if (id == "EQ5Dmobility")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-EQ5Dmobility.html");
  else if (id == "OxygenSaturationSCTobservables")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-OxygenSaturationSCTobservables.html");
  else if (id == "EQ5DSCTfindingsHygiene")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-EQ5DSCTfindingsHygiene.html");
  else if (id == "EQ5Dhygiene")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-EQ5Dhygiene.html");
  else if (id == "EQ5DSCTfindingsMobility")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-EQ5DSCTfindingsMobility.html");
  else if (id == "EQ5DSCTfindingsActivity")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-EQ5DSCTfindingsActivity.html");
  else if (id == "VRSSCTfindingsPain")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-VRSSCTfindingsPain.html");
  else if (id == "BodyTemperatureSCTObservables")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-BodyTemperatureSCTObservables.html");
  else if (id == "DiastolicBloodPressureSCTObservables")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-DiastolicBloodPressureSCTObservables.html");
  else if (id == "NPUUrinStix")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-NPUUrinStix.html");
  else if (id == "SystolicBloodPressureSCTObservables")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-SystolicBloodPressureSCTObservables.html");
  else if (id == "RespirationRateSCTObservables")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-RespirationRateSCTObservables.html");
  else if (id == "TechniqesSCTCodes")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-TechniqesSCTCodes.html");
  else if (id == "EQ5Danxiety")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-EQ5Danxiety.html");
  else if (id == "EQ5Dactivity")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-EQ5Dactivity.html");
  else if (id == "WHO5SCTfindingsRested4")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-WHO5SCTfindingsRested4.html");
  else if (id == "WHO5AnswerCodesHappy")
    Response.Redirect("http://fhir.kl.dk/ffinst/1.0.0/ValueSet-WHO5AnswerCodesHappy.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/ffinst/ValueSet.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from .0-milestone/output/crvalueset.asp) .
</body>
</html>
