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
  else if (id == "CommunicationCodes")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-CommunicationCodes.html");
  else if (id == "SocialInteractionCodes")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-SocialInteractionCodes.html");
  else if (id == "IndicatorCodesChildren")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-IndicatorCodesChildren.html");
  else if (id == "PhysicalActivityCodes")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-PhysicalActivityCodes.html");
  else if (id == "FindingInformerCodes")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-FindingInformerCodes.html");
  else if (id == "ExamResults")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-ExamResults.html");
  else if (id == "EncounterTypes")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-EncounterTypes.html");
  else if (id == "NicotineCodes")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-NicotineCodes.html");
  else if (id == "ChildrenParentRelationshipCodes")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-ChildrenParentRelationshipCodes.html");
  else if (id == "ParentSocialStatusCodes")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-ParentSocialStatusCodes.html");
  else if (id == "ParentsMentalCodes")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-ParentsMentalCodes.html");
  else if (id == "HearingCodes")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-HearingCodes.html");
  else if (id == "SightCodes")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-SightCodes.html");
  else if (id == "NutritionCodes")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-NutritionCodes.html");
  else if (id == "BodyheightSCTobservablesChildren")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-BodyheightSCTobservablesChildren.html");
  else if (id == "ParentTypes")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-ParentTypes.html");
  else if (id == "FeedingResultsChildren")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-FeedingResultsChildren.html");
  else if (id == "ObservationUnitsWeight")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-ObservationUnitsWeight.html");
  else if (id == "KLHealthNurseInterventions")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-KLHealthNurseInterventions.html");
  else if (id == "SocialSupportNetworkCodes")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-SocialSupportNetworkCodes.html");
  else if (id == "PassiveSmokingCodes")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-PassiveSmokingCodes.html");
  else if (id == "EncounterClassCodes")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-EncounterClassCodes.html");
  else if (id == "KLHealthNurseConditions")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-KLHealthNurseConditions.html");
  else if (id == "MotorFunctionCodes")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-MotorFunctionCodes.html");
  else if (id == "SleepCodes")
    Response.Redirect("http://fhir.kl.dk/children/2.1.0/ValueSet-SleepCodes.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/children/ValueSet.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \children\2.1.0\crvalueset.asp) .
</body>
</html>
