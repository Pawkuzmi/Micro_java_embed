include "MyReceiveInterface.ol"

outputPort B {
	Interfaces: MyReceiveInterface
	Location: "socket://localhost:8001"
	Protocol: sodep
}


main{
	wait@B("String from sender splited by java service")

}
