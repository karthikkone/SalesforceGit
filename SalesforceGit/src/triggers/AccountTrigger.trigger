trigger AccountTrigger on Account (after insert) {

List<Contact> contactList=new List<Contact>();

for(Account acc:Trigger.new ){
    
    Contact contact=new Contact();
    contact.AccountId=acc.Id;
    contact.LastName=acc.Name;
    contactList.add(contact);
    }
    
    insert contactList;
}