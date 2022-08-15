public class OpportunityListController {
    public ApexPages.StandardSetController opps{
        get{
            if(opps == null){
                opps = new ApexPages.StandardSetController(Database.getQueryLocator([SELECT Name, CloseDate FROM Opportunity]));
            }
            return opps;
        }
        set;
    }

    public Opportunity[] getOpportunities(){
        return (List<Opportunity>)opps.getRecords();
    }
}
