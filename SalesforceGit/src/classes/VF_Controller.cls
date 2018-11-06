public class VF_Controller {

    private String sortOrder = 'LastName';
    
    public List<Contact> getContacts(){
        
        List<Contact> results =[ SELECT Id,FirstName,LastName,Title,Email
                                 FROM Contact LIMIT 10];
        
        return results;
    }
}