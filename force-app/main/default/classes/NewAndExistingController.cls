public with sharing class NewAndExistingController {
    public Account account {get; private set;}

    public NewAndExistingController(){
        Id id = ApexPages.currentPage().getParameters().get('id');

        if(id == null){
            account = new Account();
        }else{
            account = [SELECT Name, Phone, Industry FROM Account WHERE Id =: id];
        }
    }

    public PageReference save(){
        try{
            upsert(account);
        }
        catch(System.DmlException e){
            ApexPages.addMessages(e);
            return null;
        }

        PageReference redirectSuccess = new ApexPages.StandardController(Account).view();
        return redirectSuccess;
    }
}
