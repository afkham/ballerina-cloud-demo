import ballerina/http;
import ballerina/log;
import ballerina/docker;

@docker:Expose {}
listener http:Listener helloWorldEP = new(9090);

@docker:Config {
    name: "helloworld",
    tag: "v1.0"
}
service hello on helloWorldEP {
    resource function sayHello(http:Caller caller, http:Request req) {
        var result = caller->respond("Hello, World!");
        if (result is error) {
            log:printError("Error sending response", result);
        }
    }
}
