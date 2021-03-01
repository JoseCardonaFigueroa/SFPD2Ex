public inherited sharing class BoatSearchResult {
    public BoatSearchResult() {

    }

    @AuraEnabled
    public static List<Boat__c> getBoatsBack(String boatTypeId){
        
        System.debug('Get Boats apex method' + boatTypeId);
        
        
        List<Boat__c> boats = [SELECT ID, Contact__c, BoatType__c, Description__c, Picture__c, Price__c, Length__c FROM Boat__c WHERE BoatType__c = :boatTypeId];
        System.debug('Boats boats boats boats' + boats);
        return boats;
    }
}
