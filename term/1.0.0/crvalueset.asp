<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/term/ValueSet-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/term/ValueSet-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/term/ValueSet-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/term/ValueSet-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/term/ValueSet-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/term/ValueSet-"+id+".xml");
  else if (id == "KLConditionsAndTargetGroupsFFB")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLConditionsAndTargetGroupsFFB.html");
  else if (id == "KLInterventions")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLInterventions.html");
  else if (id == "KLMatterOfInterestValues")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLMatterOfInterestValues.html");
  else if (id == "KLConditionCodes")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLConditionCodes.html");
  else if (id == "KLConditionCodesTheraphy")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLConditionCodesTheraphy.html");
  else if (id == "KLConditionCodesPrevention")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLConditionCodesPrevention.html");
  else if (id == "KLSeverities")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLSeverities.html");
  else if (id == "KLFollowUpCodesFFB")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLFollowUpCodesFFB.html");
  else if (id == "KLSeveritiesFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLSeveritiesFSIII.html");
  else if (id == "KLSeveritiesFFB")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLSeveritiesFFB.html");
  else if (id == "KLConditionADCodesFFB")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLConditionADCodesFFB.html");
  else if (id == "KLPreventionAreasFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLPreventionAreasFSIII.html");
  else if (id == "KLGoalTypeCodes")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLGoalTypeCodes.html");
  else if (id == "KLNursingAreasFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLNursingAreasFSIII.html");
  else if (id == "KLConditionCodesNursing")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLConditionCodesNursing.html");
  else if (id == "KLChangeValueCodes")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLChangeValueCodes.html");
  else if (id == "KLTheraphyAreasFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLTheraphyAreasFSIII.html");
  else if (id == "KLEvaluationTypeCodesSCT")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLEvaluationTypeCodesSCT.html");
  else if (id == "KLCarePlanCategoryCodes")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLCarePlanCategoryCodes.html");
  else if (id == "KLImportanceLevelCodesFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLImportanceLevelCodesFSIII.html");
  else if (id == "KLPreventionInterventionsFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLPreventionInterventionsFSIII.html");
  else if (id == "KLGeneralInformationFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLGeneralInformationFSIII.html");
  else if (id == "KLServiceCodesFFB")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLServiceCodesFFB.html");
  else if (id == "KLRequestFromFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLRequestFromFSIII.html");
  else if (id == "KLInterventionsFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLInterventionsFSIII.html");
  else if (id == "KLInformationCodes")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLInformationCodes.html");
  else if (id == "KLHomeCareInterventionsFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLHomeCareInterventionsFSIII.html");
  else if (id == "KLConditionFFCodesFFB")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLConditionFFCodesFFB.html");
  else if (id == "KLConditionCodesFFB")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLConditionCodesFFB.html");
  else if (id == "KLConditionOCodesFFB")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLConditionOCodesFFB.html");
  else if (id == "KLCitizenObservationResultCodesFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLCitizenObservationResultCodesFSIII.html");
  else if (id == "KLTargetMeasureCodes")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLTargetMeasureCodes.html");
  else if (id == "KLThemesFFB")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLThemesFFB.html");
  else if (id == "KLMatterOfInterestInformerFFB")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLMatterOfInterestInformerFFB.html");
  else if (id == "KLEvaluationTypeCodes")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLEvaluationTypeCodes.html");
  else if (id == "KLChangeValueCodesFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLChangeValueCodesFSIII.html");
  else if (id == "KLInterventionsFFB")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLInterventionsFFB.html");
  else if (id == "KLHomeCareAreasFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLHomeCareAreasFSIII.html");
  else if (id == "KLConditionCodesFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLConditionCodesFSIII.html");
  else if (id == "KLChangeValueCodesFFB")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLChangeValueCodesFFB.html");
  else if (id == "KLServicesTypes")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLServicesTypes.html");
  else if (id == "KLTargetGroupsFFB")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLTargetGroupsFFB.html");
  else if (id == "KLConsentToLiasing")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLConsentToLiasing.html");
  else if (id == "KLPerformanceLevelCodesFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLPerformanceLevelCodesFSIII.html");
  else if (id == "KLConditionCodesHomeCare")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLConditionCodesHomeCare.html");
  else if (id == "KLTrainingInterventionsFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLTrainingInterventionsFSIII.html");
  else if (id == "KLInformationGatheringInvestigationCodes")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLInformationGatheringInvestigationCodes.html");
  else if (id == "KLObservationCodes")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLObservationCodes.html");
  else if (id == "KLComplicationCodesSCT")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLComplicationCodesSCT.html");
  else if (id == "KLFollowUpCodesFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLFollowUpCodesFSIII.html");
  else if (id == "KLEncounterTypes")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLEncounterTypes.html");
  else if (id == "KLNeedsAssessmentCodesFFB")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLNeedsAssessmentCodesFFB.html");
  else if (id == "KLNursingInterventionsFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLNursingInterventionsFSIII.html");
  else if (id == "KLFollowUpCodes")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLFollowUpCodes.html");
  else if (id == "KLInformationGatheringTypeCodes")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLInformationGatheringTypeCodes.html");
  else if (id == "KLCitizenObservationCodesFSIII")
    Response.Redirect("http://fhir.kl.dk/term/1.0.0/ValueSet-KLCitizenObservationCodesFSIII.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/term/ValueSet.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /term/1.0.0/crvalueset.asp) .
</body>
</html>
