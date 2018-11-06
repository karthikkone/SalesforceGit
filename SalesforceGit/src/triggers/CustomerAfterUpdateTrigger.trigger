trigger CustomerAfterUpdateTrigger on APEX_Customer__c (after update) {

List<Invoice__c> invoiceList=new List<Invoice__c>();
for(APEX_Customer__c objCustomer:Trigger.new)
{
    //if previous status is non active & current status is active
    if(objCustomer.Customer_Status__c=='Active' && trigger.oldMap.get(objCustomer.Id).Customer_Status__c!='Active'){
    
    Invoice__c objInvoice=new Invoice__c();
    objInvoice.Status__c='Pending';
    objInvoice.Customer_Name__c=objCustomer.Id;
    objInvoice.Description__c='Invoice created with Trigger';
    invoiceList.add(objInvoice);
    }
}

insert invoiceList;
}