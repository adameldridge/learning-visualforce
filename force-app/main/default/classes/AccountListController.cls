public class AccountListController {

    public ApexPages.StandardSetController accts  {
        get{
            if(accts == null){
                accts = new ApexPages.StandardSetController(Database.getQueryLocator([SELECT Name, AccountNumber FROM Account]));
            }
            return accts;
        }
        set;
    }  
    
    public Account[] getAccounts(){
        return (Account[])accts.getrecords();
    }
}
