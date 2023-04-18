@RestResource(urlMapping='/Opp/*')
global with sharing class OpportunityManager {
    @HttpGet
    global static id getOpportunity() {
        RestRequest request = RestContext.Request;
        string uri = Request.requestURI;
        id oppId = uri.substringAfterLast('/');
        Opportunity op = [SELECT id,name,closedate,stageName,amount FROM Opportunity WHERE id =:oppId];
        return op.id;

    }
    @httpPost
    global static id createOpportunity(string name, string closeDate, string stagename, string amount, string type) {
        Opportunity opp = new Opportunity();
        opp.Name = name;
        opp.CloseDate = Date.valueOf(closeDate);
        opp.StageName = stagename;
        opp.Amount = Decimal.valueOf(amount);
        opp.Type = type;
        insert opp;
        return opp.id;

    }
    @HttpDelete
    global static string deleteOpportunity() {
        RestRequest Request = RestContext.Request;
        string uri = Request.requestURI;
        id oppId = uri.substringAfterLast('/');
        Opportunity op = [ SELECT id FROM Opportunity WHERE id =: oppId];
        delete op;
        return 'recordunuz başariyla silindi...';
        
   
    }
    @HttpPut
    global static id upsertOpportunity(string id, string name, string closeDate, string stageName, string amount) {
        Opportunity opp = new Opportunity();
        opp.id = id;
        opp.Name = name;
        opp.CloseDate = Date.valueOf(CloseDate);
        opp.StageName = stageName;
        opp.Amount = Decimal.valueOf(amount);
        upsert opp;
        return opp.id; 
    }
    @HttpPatch
global static Opportunity updateOpportunity() {
    RestRequest request = RestContext.request;
    string JSONstring = request.requestBody.toString();
    Opportunity op = (Opportunity)JSON.deserialize(JSONString, opportunity.class);
    update op;
    opportunity opnew =[SELECT id, name, stageName, CloseDate, amount From opportunity Where id =: op.id];
    return opNew;
}

}