<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/StructureDefinition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/StructureDefinition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/StructureDefinition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/StructureDefinition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/StructureDefinition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/StructureDefinition-"+id+".xml");
  else if (id == "kl-messaging-ffb-account")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-account.html");
  else if (id == "kl-messaging-ffb-messagingOrganization")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-messagingOrganization.html");
  else if (id == "kl-messaging-ffb-interventionPurpose")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-interventionPurpose.html");
  else if (id == "kl-messaging-ffb-citizenObjective")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-citizenObjective.html");
  else if (id == "kl-messaging-ffb-matterOfInterest")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-matterOfInterest.html");
  else if (id == "kl-messaging-ffb-targetGroup")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-targetGroup.html");
  else if (id == "kl-messaging-ffb-intervention")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-intervention.html");
  else if (id == "kl-messaging-ffb-orderCarePlan")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-orderCarePlan.html");
  else if (id == "kl-messaging-ffb-evaluation")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-evaluation.html");
  else if (id == "kl-messaging-ffb-actingMunicipality")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-actingMunicipality.html");
  else if (id == "kl-messaging-ffb-participatingOrganization")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-participatingOrganization.html");
  else if (id == "kl-messaging-ffb-accountOwner")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-accountOwner.html");
  else if (id == "kl-messaging-ffb-servicePerformer")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-servicePerformer.html");
  else if (id == "kl-messaging-ffb-citizen")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-citizen.html");
  else if (id == "kl-messaging-ffb-relatedPerson")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-relatedPerson.html");
  else if (id == "kl-messaging-ffb-informationGathering")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-informationGathering.html");
  else if (id == "kl-messaging-ffb-condition")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-condition.html");
  else if (id == "kl-messaging-ffb-documentReference")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-documentReference.html");
  else if (id == "kl-messaging-ffb-guardian")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-guardian.html");
  else if (id == "kl-messaging-ffb-interventionGoal")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-interventionGoal.html");
  else if (id == "kl-messaging-ffb-relatedCarePlan")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-relatedCarePlan.html");
  else if (id == "kl-messaging-ffb-disgnosis")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-disgnosis.html");
  else if (id == "kl-messaging-ffb-eanIdentifier")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-eanIdentifier.html");
  else if (id == "kl-messaging-ffb-consent")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-consent.html");
  else if (id == "kl-messaging-ffb-orderMessageHeader")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-orderMessageHeader.html");
  else if (id == "kl-messaging-ffb-orderMessage")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-orderMessage.html");
  else if (id == "kl-messaging-ffb-guardianshipForm")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-guardianshipForm.html");
  else if (id == "kl-messaging-ffb-participationDescription")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-participationDescription.html");
  else if (id == "kl-messaging-ffb-followUp")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/1.0.0/StructureDefinition-kl-messaging-ffb-followUp.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/ffbmessaging/StructureDefinition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from ng#1.0.0-milestone/output/crstructuredefinition.asp) .
</body>
</html>
