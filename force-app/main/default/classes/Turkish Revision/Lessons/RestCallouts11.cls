public with sharing class RestCallouts11 {
  public static void getUser(){
    //1
    HttpRequest Request = new HttpRequest();
    Request.setEndpoint('https://reqres.in/api/users/3');
    Request.setMethod('GET');
    //2
    Http Http = new Http();
    HttpResponse response = Http.send(Request);

    //3
    if (response.getStatusCode() == 200) {
        System.debug(response.getBody());
        string JSONUser =response.getBody();
        Map<String,Object> userValue = (Map<String,Object>)JSON.deserializeUntyped(JSONUser);
        System.debug('veri ' + userValue);
        System.debug('datanin içindeki veri ' + userValue.get('data'));
        System.debug('support içindeki veri' + userValue.get('support'));
        Map<String,Object>UserInfo=(Map<String,Object>)userValue.get('data');
        System.debug(UserInfo);
        System.debug(UserInfo.get('first_name'));
        System.debug(UserInfo.get('last_name'));
        System.debug(UserInfo.get('email'));
        System.debug(UserInfo.get('id'));

    }

    //4
    
    
  }
}