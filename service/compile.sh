javac -cp $JOLIE_HOME/lib/libjolie.jar:$JOLIE_HOME/jolie.jar MyService.java
jar cvf myservice.jar MyService.class
cp myservice.jar ../lib
