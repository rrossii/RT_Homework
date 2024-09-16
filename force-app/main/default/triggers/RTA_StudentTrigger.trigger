trigger RTA_StudentTrigger on Student__c (before insert) { 
    if (Trigger.isBefore && Trigger.isInsert) {
        List<Student__c> students = Trigger.new;
        RTA_StudentTriggerHandler.handleBeforeInsert(students);
    }
}