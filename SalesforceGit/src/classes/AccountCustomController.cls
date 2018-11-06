public class AccountCustomController {

    private final Account account;
    
    public AccountCustomController(){
    
        account=[SELECT Id12,Name,Site from Account where Id=: Apexpages.currentPage().getParameters().get('id')];
    }
    
    public Account getAccount(){
    
        return account;
    }
    
    public PageReference save(){
    
        update account;
        return null;
    }
}