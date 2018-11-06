public class MyControllerExtension {

    private Account acct; 
    public MyControllerExtension(ApexPages.StandardController stdController) {
    
        acct=(Account)stdController.getRecord();
    }
    
    public String getGreeting(){
    
        return 'Hello  ' + acct.Name +'  '+acct.Id;
    }

}