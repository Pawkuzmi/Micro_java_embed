include "MyConsoleInterface.ol"
include "console.iol"

outputPort MyService {
   	Location: "socket://localhost:8000"
	Protocol: sodep
	Interfaces: MyConsoleInterface
}


embedded {
    Java: "MyService" in MyService
}

main
{		
    split@MyService("Text splited by java service")




}
