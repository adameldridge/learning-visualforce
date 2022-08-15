public class AccountCustomController {
    
    private final Account account;

    public AccountCustomController(){
        account = [SELECT Id, Name, Site
                   FROM Account
                   WHERE Id=:ApexPages.currentPage().getParameters().get('Id')];
    }

    public Account getAccount(){
        return account;
    }

    public void save(){
        update account;
    }
}
