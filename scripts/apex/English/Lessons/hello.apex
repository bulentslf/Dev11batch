// Invoke Auto Launched Flow from APex
// Step 1: We have to prepare Input Variables along with values - Map
Map<String, Object> inputs = new Map<String, Object>();  
inputs.put('ownerId', '0058d000005Z9tvAAC');
inputs.put('recordId', '0018d00000KUif8AAD');

// Step 2: Invoking Flow using Flow.Interview Apex Class
// Flow.Interview is a predefined Apex Class which hold relationship between Apex & Flows

Flow.Interview autoLaunchFlow = Flow.Interview.createInterview('Auto_Launched_Demo' , inputs);
autoLaunchFlow.start();


RestApiOutboundCallout.getAnimals();
RestApiOutboundCallout.getUser();
RestApiOutboundCallout.getListOfUsers();
RestApiOutboundCallout.postAnimal();
RestApiOutboundCallout.postUser();
// RestApiOutboundCalloutDeneme.getListOfUsers();
// RestApiOutboundCalloutDeneme.postAnimal();
// RestApiOutboundCalloutDeneme.postUser();
RestApiOutboundCallout.getAnimalWithAuthenticationNamedCredential();
SoapApiOutboundCallout.makeMultiplication();
SoapApiOutboundCallout.makeParkCallout();
GetPostBatch11.getTodos();
GetPostBatch11.postTodos();
SoapCallout11.parksCallout('Germany');








