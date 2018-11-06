public class SampleClass {

    public static void Apexmethod(){
        system.debug('Hello World');
        String myName='aftab';
        System.debug('My Name:'+myName);
        System.debug('Capitalization:'+myName.capitalize());
        System.debug('Upper Case:'+myName.toUpperCase());
        System.debug('Reverse:'+myName.reverse());
        System.debug('Length:'+myName.length());
        
        Account acc=new Account(Name='Test Account',AccountNumber='00001');
        insert acc;
        System.debug('Inserted Account ID:'+acc.Id);
        
        
    }
}