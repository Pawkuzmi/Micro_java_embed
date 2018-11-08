include "MyReceiveInterface.ol"

outputPort B {
	Interfaces: MyReceiveInterface
	Location: "socket://localhost:8000"
	Protocol: sodep
}


main{
	wait@B("String splited by java service")

}
