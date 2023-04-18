public with sharing class RestApiOutboundCalloutDeneme {

    public static void getListOfUsers() {
        HttpRequest request = new HttpRequest();
        Request.setEndpoint('https://gorest.co.in/public/v2/users');
        Request.setMethod('GET');
        //
        Http Http = new Http();
        HttpResponse response = Http.send(request);
        //
        if (response.getStatusCode()==200) {
            string jsonString = response.getBody();
            list<UserWrapper> UserInfos = (list<UserWrapper>) JSON.deserializeStrict(jsonString, list<UserWrapper>.class);

            for (UserWrapper user : userInfos) {
                System.debug(user.id);
                
            }
            
        }



    }
    public class UserWrapper{
        public integer id;
        public string name;
        public string email;
        public string gender;
        public string status;

    }

    public static void postAnimal() {
        HttpRequest request =new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        //
        request.setHeader('Content-Type','application/json');
        //
        Request.setBody('{"name" : "fluffy Bunny"}');
        //
        Http Http = new Http();
        HttpResponse response = http.send(Request);
        //
        System.debug(response.getStatus());
        System.debug(response.getStatusCode());
        System.debug(response.getBody());

        
    }
    public static void postUser() {

        HttpRequest request =new HttpRequest();
        request.setEndpoint('https://reqres.in/api/users');
        Request.setMethod('POST');
        Request.setHeader('Content-Type','application/json');
        UserRequest obj = new UserRequest();
        obj.name='Cengiz Kurtoglu';
        obj.job='Singer';
        //string jsonBody =JSON.serialize(obj);
        Request.setBody(JSON.serialize(obj));
        //
        Http Http = new Http();
        HttpResponse response = http.send(request);
        System.debug(response.getBody());
        if (response.getStatusCode() == 201) {
           string jsonString = response.getBody();
          UserResponse userResp = (UserResponse) JSON.deserializeStrict(jsonString, UserResponse.class);
          string userId = userResp.id;
            
        }
        
    }



    public class UserRequest {
        public string name;
        public string job;

    }
    public class UserResponse{
        public string id;
        public String name;
        public string job;
        public string createdAt;
        
    }
    
}