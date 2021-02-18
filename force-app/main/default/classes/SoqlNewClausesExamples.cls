public inherited sharing class SoqlNewClausesExamples {
    public SoqlNewClausesExamples() {

    }


    public static void typeOfClause(){
        List<Task> tasks = [SELECT ID, Status, Subject, ActivityDate, OwnerId, Owner.Name 
            TYPEOF What
                WHEN Account THEN Id, Name, AnnualRevenue
                WHEN Custom_Object__c THEN Id, Custom_Field_1__c, Custom_Field_2__c
                ELSE Id, Name
            END
        FROM Task
        WHERE OwnerId = :currentUserId
        LIMIT 50];

        System.debug(tasks);
    }

    public static void groupByRollUpClause(){
        // You can group up to 3 fields
        // Allows you to calculate subtotals
        //
        List<Opportunity> opps = [SELECT StageName, type, SUM(Amount) FROM Opportunity GROUP BY ROLLUP(StageName, Type)];
    }

    public static void havingClause(){
        List<Opportunity> opps = [SELECT Type, AVG(Amount) FROM Opportunity GROUP BY Type HAVING AVG(Amount)> 1000]
    }
}
