import jolie.runtime.JavaService;

public class MyService extends JavaService {

    public static void main(String[] args) {
        System.out.println("main");
    }

    public void split(String arg) {
        String regex = "\\s";
        String[] result = arg.split(regex);
        for (String s : result) {
            System.out.println(s);
        }
        /*
        Create repository with this project and all jolie files used to run embedded java code.
         In this repository must be dockerfile that builds image of container with jolie and my java project.
        Go to dockerhub and configure repository from above to compile after every commit.
        Run application on google cloud using kubernetes.
        **/
    }
}
