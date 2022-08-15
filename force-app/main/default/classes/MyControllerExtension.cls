public with sharing class MyControllerExtension {
    
    private final Account account;
    public MyControllerExtension(ApexPages.StandardController standardController){
        this.account = (Account)standardController.getRecord();
    }

    public String getGreeting(){
        return 'Hello ' + account.name + ' (' + account.id + ')';
    }

}
