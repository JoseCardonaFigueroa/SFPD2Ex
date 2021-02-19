public inherited sharing class RollbackControllerExample {
    public RollbackControllerExample() {
        Savepoint sp = Database.Savepoint();

        Lead oldLead = [SELECT FirstName, LastName FROM Lead LIMIT 1];

        oldLead.LastName = '';

        Lead newLead = new Lead();
        newLead.FirstName = 'Martin';
        newLead.LastName =  'Gessner';
        newLead.Company = 'Focu on Force';

        try {
            insert newLead;
            update oldLead;
        } catch (Exception e) {
            
            System.debug('Error caught: ' + e.getMessage());
            Database.rollback(sp);
            
        }

        Integer count = [SELECT COUNT() FROM Lead WHERE FirstName = 'Martin'];
        System.debug('Results found: ' + count);
    }
}
