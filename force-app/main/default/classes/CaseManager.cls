@RestResource(urlMapping='/Cases/*')
global with sharing class CaseManager {
@HttpGet
    global static Case getCaseById(){
            RestRequest request=RestContext.request;
       String caseId= request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
       Case result= [Select CaseNumber,Subject,Status,Origin,Priority From Case where Id=:caseId];
        return result;   
    }
    @HttpPost
    global static Id createCase(String subj, String sta, String ori, String pri){
        case thisCase=new Case (Subject=subj, Status=sta, Origin=ori, Priority=pri);
        insert thisCase;
        return thisCase.Id;
    }
    @HttpDelete
    global static void deleteCase(){
        RestRequest request=RestContext.request;
       String caseId= request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
       Case thisCase=[Select Id from Case where id=:caseId];
        delete thisCase;
    }
    @HttpPut
    global static ID upsertCase (String sub, string sta, String ori, String pri, String id){
       Case thisCase = new Case (Id=id, Subject= sub, status=sta, origin=ori,priority=pri);
        upsert thisCase;
        return thisCase.Id;
    }
}