public with sharing class RTA_StudentTriggerHandler {
    public static void handleBeforeInsert(List<Student__c> students) {
        for (Student__c student : students) {
            if (student.Comment__c == null) {
                student.Comment__c = 'Done';
            }
        }
    }
}