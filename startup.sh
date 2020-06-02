#!/bin/sh

JAVA_HEAP_INITIAL=384m
JAVA_HEAP_MAX=768m
JAVA_METASPACE_MAX=128m

if [ -z "$SPRING_PROFILE" ]
then
  SPRING_PROFILE=default;
fi

java -Djava.security.egd=file:/dev/./urandom \
-Dspring.profiles.active=$SPRING_PROFILE \
-Xms$JAVA_HEAP_INITIAL \
-Xmx$JAVA_HEAP_MAX \
-XX:MaxMetaspaceSize=$JAVA_METASPACE_MAX \
-jar /app.jar
