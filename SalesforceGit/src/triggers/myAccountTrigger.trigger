trigger myAccountTrigger on Account (before delete) {

if(Trigger.isBefore){
{
   if(Trigger.isDelete){
   //in a before delete trigger, the trigger accesses the records that will be deleted with Trigger.old list
   for(Account a:Trigger.old){
      if(a.Name!='OkToDelete'){
          a.addError('You cannot delete this record');
      } 
     }
   }
  }
 }
}