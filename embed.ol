include "MyConsoleInterface.ol"
include "MyReceiveInterface.ol"
include "console.iol"

outputPort MyService {
   	Location: "socket://localhost:8000"
	Protocol: sodep
	Interfaces: MyConsoleInterface
}

inputPort ReceivePort {
   	Location: "socket://localhost:8001"
	Protocol: sodep
	Interfaces: MyReceiveInterface
}


embedded {
    Java: "MyService" in MyService
}

main
{
	println@Console("Waiting...")();
	[wait(text)]
	{
		split@MyService(text)	
	}




}
