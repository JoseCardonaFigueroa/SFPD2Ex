public inherited sharing class DynamicApexDescribe {
    public DynamicApexDescribe() {

        //Get token of an sObject by getting the variable of
        // the variable at the sobject
        Schema.sObjectType o1 = Account.sObjectType;

        // first instantiate the sObject and call the getSObjectType
        // that will return the token
        Contact c = new Contact();
        Schema.sObjectType o2 = c.getSObjectType();

        // Describes the account object using the Account class
        Schema.DescribeSObjectResult or1 = Account.sObjectType.getDescribe();
        // Descrbies the account object using the Schema class
        Schema.DescribeSObjectResult or2 = Schema.sObjectType.Account;

        // Gets the Field from account
        Schema.sObjectField  f1 = Account.Name;

        // Describes LastName
        Schema.DescribeFieldResult fr = Schema.sObjectType.Contact.fields.LastName;
        // Gets the field from fr variable
        Schema.sObjectField f2 = fr.getSObjectField();


        Schema.DescribeFieldResult fr1 = Account.Name.getDescribe();

        Schema.DescribeFieldResult fr2 = Schema.SObjectType.Contact.fields.LastName;

        Schema.SObjectField f1 = Account.Name;

        Schema.DescribeFieldResult fr = Schema.sObjectType.contact.fields.LastName;
        Schema.SObjectField f2 = fr.getSObjectField();

        String[] objectTypes = new String[]{'Account'};
        Schema.DescribeSObjectResult[] results = Schema.describeSObjects(objectTypes);
        Boolean flag = results[0].isAccessible();

        Map<String, Schema.SObjectType> objectMap = Schema.getGlobalDescribe();

        String objectName = 'Account';
        
        Schema.DescribeSObjectResult dsr = objectMap.get(objectName).getDescribe();

        // Example of using the Schema.describeTabs method for all apps
        List<Schema.DescribeTabSetResult> tabSetResult = Schema.describeTabs();

        for (Schema.DescribeTabSetResult tsr : tabSetResults) {
            String appLabel = tsr.getLabel();
            System.debug('App Label ' + appLabel);
        }

        //Example of using the getTabs method for the Sales app
        for (Schema.DescribeTabSetResult tsr : tabSetResults) {
            String appLabel = tsr.getLable();
            if (appLabel == 'Sales') {
                List<Schema.DescribeTabResult> tabResults = tsr.geTabs();
                for(Schema.DescribeTabResult tr : tabResults){
                    System.debug('Tab Label ' + tr.getLabel());
                }
            }
        }


        switch on String.valueOf(token) {
            when 'Account' {
                Account r = (Account)token.newSObject();
                r.Name = 'Cosmic';
                r.Description = record.Name;
                insert r;
            }
            when 'Contact' {
                Contact r = (Contact)token.newSObject();
                r.LastName = 'Smith';
                r.Description = record.Name;
                insert r;
            }
        }
    }
}
