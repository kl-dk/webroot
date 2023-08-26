# webroot

This is the root folder which should be hosted by the web server (published for asp-new).

 * KL IG Id's should follow the pattern of: `kl.dk.fhir.<ig content>` - > eg. `kl.dk.fhir.term`
 * KL IG canonicals should follow the pattern of: `http://fhir.kl.dk/<ig content>` -> eg. `http://fhir.kl.dk/caresocial`

 * (Releases are also hosted under https://kl-dk.github.io/website/ - for tests)


Example run `java -jar publisher.jar -go-publish -source /Users/jkiddo/work/dk-core  -web /Users/jkiddo/work/website/fhir -temp /Users/jkiddo/work/temp -registry ig-registry/fhir-ig-list.json -history fhir-ig-history-template -templates /Users/jkiddo/work/website/fhir/templates`
