wget -O closure-compiler.jar http://central.maven.org/maven2/com/google/javascript/closure-compiler/v20181125/closure-compiler-v20181125.jar

native-image -H:+JNI --no-server \
    -H:+ReportUnsupportedElementsAtRuntime \
    -H:IncludeResourceBundles=com.google.javascript.rhino.Messages \
    -H:IncludeResourceBundles=org.kohsuke.args4j.Messages \
    -H:IncludeResourceBundles=org.kohsuke.args4j.spi.Messages \
    -H:IncludeResourceBundles=com.google.javascript.jscomp.parsing.ParserConfig \
    -H:ReflectionConfigurationFiles=reflection-config.json \
    -H:IncludeResources='(externs.zip)|(.*(js|txt))' \
	--initialize-at-build-time \
    -jar closure-compiler.jar
