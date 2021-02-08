public with sharing class CustomController {
    public Account acc {get; set;}
    public CustomController() {
        
    }

    public Account getAccount(){

        acc = [SELECT ID, Name, Type, AccountSource FROM Account WHERE Name='West Airlines'];

        return acc;
    }

    public PageReference save(){

        update acc;

        AepoxPages.addMessage(new ApexPage.message(ApexPages.severity.INFO, acc.Name + 'Account has been updated'));

        return null;
    }

    
}
