<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/StructureDefinition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/StructureDefinition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/StructureDefinition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/StructureDefinition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/core/StructureDefinition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/core/StructureDefinition-"+id+".xml");
  else if (id == "KLCommonCareSocialGoal")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonCareSocialGoal.html");
  else if (id == "KLCommonCareSocialInformationGathering")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonCareSocialInformationGathering.html");
  else if (id == "KLCommonCareSocialObservation")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonCareSocialObservation.html");
  else if (id == "ConditionLastAssertedDate")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-ConditionLastAssertedDate.html");
  else if (id == "KLCommonCareSocialEncounter")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonCareSocialEncounter.html");
  else if (id == "KLCommonCitizen")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonCitizen.html");
  else if (id == "KLCommonCareSocialCarePlan")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonCareSocialCarePlan.html");
  else if (id == "RequesterType")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-RequesterType.html");
  else if (id == "MatterOfInterestInformer")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-MatterOfInterestInformer.html");
  else if (id == "FollowUpEncounter")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-FollowUpEncounter.html");
  else if (id == "KLCommonCareSocialMatterOfInterest")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonCareSocialMatterOfInterest.html");
  else if (id == "SubjectConsentToLiaising")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-SubjectConsentToLiaising.html");
  else if (id == "KLCommonCareSocialEvaluation")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonCareSocialEvaluation.html");
  else if (id == "MunicipalityCaseNumber")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-MunicipalityCaseNumber.html");
  else if (id == "BasedOnServiceRequest")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-BasedOnServiceRequest.html");
  else if (id == "KLCommonCareSocialPurpose")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonCareSocialPurpose.html");
  else if (id == "KLCommonOrganization")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonOrganization.html");
  else if (id == "ExtEventHist")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-ExtEventHist.html");
  else if (id == "KLCommonCareSocialCitizensOwnObservation")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonCareSocialCitizensOwnObservation.html");
  else if (id == "KLCommonPractitioner")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonPractitioner.html");
  else if (id == "KLCommonCareSocialServiceRequest")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonCareSocialServiceRequest.html");
  else if (id == "ConditionRank")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-ConditionRank.html");
  else if (id == "KLCommonCareSocialPlannedIntervention")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonCareSocialPlannedIntervention.html");
  else if (id == "KLCommonCareSocialFocusCondition")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonCareSocialFocusCondition.html");
  else if (id == "KLCommonServicePerformer")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonServicePerformer.html");
  else if (id == "KLCommonCareSocialFFBGoal")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonCareSocialFFBGoal.html");
  else if (id == "KLCommonCareSocialCompletedIntervention")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonCareSocialCompletedIntervention.html");
  else if (id == "KLCommonCareSocialCondition")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonCareSocialCondition.html");
  else if (id == "KLCommonCareSocialFollowUp")
    Response.Redirect("http://fhir.kl.dk/core/1.2.0/StructureDefinition-KLCommonCareSocialFollowUp.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/core/StructureDefinition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /core/1.2.0/crstructuredefinition.asp) .
</body>
</html>
