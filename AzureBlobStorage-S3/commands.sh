mvn archetype:generate -DarchetypeGroupId=com.microsoft.azure \
   -DarchetypeArtifactId=azure-functions-archetype \
   -DjavaVersion=8 \
   -DgroupId=com.example \
   -DartifactId=helloworldfunction \
   -Dversion=1.0-SNAPSHOT


cd helloworldfunction

