@isTest
public class RTA_StudentTriggerHandlerTest {
    @TestSetup
    static void makeData() {
        List<Student__c> students = new List<Student__c>();

        for (Integer i = 0; i < 100; i++) {
            Student__c student = new Student__c();
            student.Name = 'Name Surname' + i;

            students.add(student);
        }

        insert students;
    }

    @isTest
    static void checkIfCommentIsFilledWithDoneTextWhenStudentIsCreated() {
        List<Student__c> students = [SELECT Id, Name FROM Student__c WHERE Name LIKE 'Name Surname %'];
        
        for (Student__c student : students) {
            System.assertEquals('Done', student.Comment__c, 'The Comment should be filled with "Done".');
        }
    }
}