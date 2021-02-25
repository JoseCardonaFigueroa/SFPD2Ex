global class EmailInboundClassEx implements Messaging.InboundEmailHandler{
    public EmailInboundClassEx() {


    }

    global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope env){

        Messaging.InboundEmailResult result = new Messaging.InboundEmailResult();

        Contact con = [SELECT ID, Name, Email, Emails_Recieved__c FROM Contact WHERE email= :email.fromAddress LIMIT 1];

        con.Emails_Recieved__c = con.Emails_Recieved__c + 1;

        update con;

        result.success = true;
        return result;
    }

    
}
